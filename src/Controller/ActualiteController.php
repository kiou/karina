<?php
namespace App\Controller;

use App\Entity\Actualite;
use App\Repository\ActualiteRepository;
use App\Repository\EntrepriseRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ActualiteController extends AbstractController
{
    private $ActualiteRepository;
    private $EntrepriseRepository;

    public function __construct(
        ActualiteRepository $ActualiteRepository,
        EntrepriseRepository $EntrepriseRepository
    ){
        $this->ActualiteRepository = $ActualiteRepository;
        $this->EntrepriseRepository = $EntrepriseRepository;
    }

    public function index()
    {
        $actualites = $this->ActualiteRepository->getAllActualites();
        $entreprise = $this->EntrepriseRepository->getEntreprise();

        return $this->render('actualites.html.twig',[
            'actualites' => $actualites,
            'entreprise' => $entreprise
        ]);
    }

    public function view(Actualite $id)
    {
        $actualite = $this->$ActualiteRepository->find($id);

        return $this->render('actualite.html.twig',[
            'actualite' => $actualite
        ]);

    }
}