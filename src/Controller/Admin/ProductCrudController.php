<?php

namespace App\Controller\Admin;

use Imagine\Image\Box;
use App\Entity\Product;
use Imagine\Gd\Imagine;
use App\Utilities\Upload;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ProductCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Product::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('title')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Produit')
            ->setEntityLabelInPlural('Produits')
            ->setDefaultSort(['id' => 'DESC'])
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        $timestamp = time();

        yield DateTimeField::new('created','Création')
                    ->setFormat('long', 'none')
                    ->onlyOnIndex();
         yield TextField::new('title', 'Titre');
         yield ImageField::new('image')
                    ->setUploadDir('public/img/upload/')
                    ->setBasePath('img/upload/')
                    ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
                    ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                        $upload = new Upload();

                        $image = $upload->createName(
                            $file->getClientOriginalName(),
                            $this->getUploadRootDir().'/',
                            $timestamp
                        );

                        $imagine = new Imagine();

                        $size = new Box(1920,1080);
                        $imagine->open($file)
                                ->thumbnail($size, 'inset')
                                ->save($this->getUploadRootDir().'upload/'.$image);

                        $size = new Box(375,225);
                        $imagine->open($file)
                                ->thumbnail($size, 'outbound')
                                ->save($this->getUploadRootDir().'miniature/'.$image);
                });
           yield ChoiceField::new('language', 'Langue')
                    ->setChoices(['English' => 'en', 'French' => 'fr', 'Spanish' => 'es'])
                    ->allowMultipleChoices(false);
           yield TextEditorField::new('contenu')
                    ->hideOnIndex()
                    ->setColumns('col-sm-12 col-lg-12 col-xxl-12')
                    ->setFormType(CKEditorType::class);
           yield BooleanField::new('isActive','Actif')->onlyOnIndex();
  
    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../../public/img/';
    }


}
