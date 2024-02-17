<?php
namespace App\Controller;

use App\Entity\Contact;
use App\Form\Type\ContactType;
use App\Repository\EntrepriseRepository;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;

class ContactController extends AbstractController
{

    private $EntrepriseRepository;

    public function __construct(
            EntrepriseRepository $EntrepriseRepository
        )
    {
        $this->EntrepriseRepository = $EntrepriseRepository;
    }

    public function index()
    {
        $entreprise = $this->EntrepriseRepository->getEntreprise();

        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact,[
            'action' => $this->generateUrl('sendcontact')
        ]);

        return $this->render('contact.html.twig',[
            'form' => $form->createView(),
            'entreprise' => $entreprise
        ]);
    }

    public function send(
        Request $request,
        MailerInterface $mailer,
    )
    {   
        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $email = (new TemplatedEmail())
                ->from('contact@domaine-de-sabatas.fr')
                ->to('contact@domaine-de-sabatas.fr')
                ->subject("Formulaire du site internet")
                ->htmlTemplate('mail/layout.html.twig')
                ->context([
                    'nomdata' => $form->getData()->getNom(),
                    'emaildata' => $form->getData()->getEmail(),
                    'arriveedata' => $form->getData()->getArrivee(),
                    'departdata' => $form->getData()->getDepart(),
                    'categoriedata' => $form->getData()->getCategorie(),
                    'hebergementdata' => $form->getData()->getHebergement(),
                    'messagedata' => $form->getData()->getMessage(),
                ]);

                try {
                    $mailer->send($email);
                } catch (TransportExceptionInterface $e) {
                    $request->getSession()->getFlashBag()->add('error', 'Une erreur c\'est produite, merci de compléter le formulaire à nouveau');
                    return $this->redirect($this->generateUrl('app_index'));
                }

            $mailer->send($email);
        }

        return $this->render('valide.html.twig',[
            'form' => $form->createView()
        ]);
    }

}