<?php
namespace App\Controller;

use App\Entity\Actualite;
use App\Repository\ActualiteRepository;
use App\Repository\EntrepriseRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ActualiteController extends AbstractController
{
    private $EntrepriseRepository;

    public function __construct(
        EntrepriseRepository $EntrepriseRepository
    ){
        $this->EntrepriseRepository = $EntrepriseRepository;
    }

    public function index(ActualiteRepository $ActualiteRepository)
    {
        $actualites = $ActualiteRepository->getAllActualites();
        $entreprise = $this->EntrepriseRepository->getEntreprise();

        return $this->render('actualites.html.twig',[
            'actualites' => $actualites,
            'entreprise' => $entreprise
        ]);
    }

    public function view(Actualite $id, ActualiteRepository $ActualiteRepository)
    {
        $actualite = $ActualiteRepository->find($id);
        $entreprise = $this->EntrepriseRepository->getEntreprise();

        return $this->render('actualite.html.twig',[
            'actualite' => $actualite,
            'entreprise' => $entreprise
        ]);

    }
}