<?php

namespace App\Form\Type;

use App\Entity\Contact;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class,[
                'label' => 'First name *',
                'attr' => [ 'placeholder' => 'E.G. John'],
            ])
            ->add('prenom', TextType::class,[
                'label' => 'Last name *',
                'attr' => [ 'placeholder' => 'Smith'],
            ])
            ->add('email', EmailType::class,[
                'label' => 'Company mail *',
                'attr' => [ 'placeholder' => 'johnsmith@bubbagump.org'],
            ])
            ->add('telephone', TextType::class,[
                'label' => 'Phone number *',
                'attr' => [ 'placeholder' => '(000) 000-000'],
            ])
            ->add('message', TextareaType::class,[
                'label' => 'What would you like to discuss ? *',
                'attr' => [ 'placeholder' => 'Your message'],
            ])
            ->add('Envoyer', SubmitType::class,[
                'label' => 'Send',
                'attr' => ['class' => 'btn btnSubmit']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Contact::class
        ]);
    }
}
