<?php
namespace App\Controller;

use App\Entity\Actualite;
use App\Repository\ActualiteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ActualiteController extends AbstractController
{
    public function index(ActualiteRepository $ActualiteRepository)
    {
        $actualites = $ActualiteRepository->getAllActualites();

        return $this->render('actualites.html.twig',[
            'actualites' => $actualites
        ]);
    }

    public function view(Actualite $id, ActualiteRepository $ActualiteRepository)
    {
        $actualite = $ActualiteRepository->find($id);

        return $this->render('actualite.html.twig',[
            'actualite' => $actualite
        ]);

    }
}