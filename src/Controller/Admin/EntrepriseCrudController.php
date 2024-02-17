<?php

namespace App\Controller\Admin;

use App\Entity\Entreprise;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class EntrepriseCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Entreprise::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Entreprise')
            ->setEntityLabelInPlural('Entreprises')
            ->setDefaultSort(['id' => 'DESC']);
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        yield DateTimeField::new('created','Création')
                    ->setFormat('long', 'none')
                    ->onlyOnIndex();
         yield TextField::new('name', 'Nom');
         yield ChoiceField::new('language', 'Langue')
                 ->setChoices(['English' => 'en', 'French' => 'fr', 'Spanish' => 'es'])
                 ->allowMultipleChoices(false);
         yield TextField::new('adresse', 'Adresse');
         yield TextField::new('email', 'Email');
         yield TextField::new('telephone', 'Téléphone');
         yield TextField::new('facebook', 'Facebook')->hideOnIndex();
         yield TextField::new('instagram', 'Instagram')->hideOnIndex();
         yield TextField::new('youtube', 'Youtube')->hideOnIndex();
    }

}
