<?php
namespace App\Controller;

use App\Repository\HeaderRepository;
use App\Repository\GaleriesRepository;
use App\Repository\StatistiqueRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalController extends AbstractController
{
    private $HeaderRepository;
    private $StatistiqueRepository;
    private $GaleriesRepository;

    public function __construct(
        HeaderRepository $HeaderRepository,
        StatistiqueRepository $StatistiqueRepository,
        GaleriesRepository $GaleriesRepository
    ){
        $this->HeaderRepository = $HeaderRepository;
        $this->StatistiqueRepository = $StatistiqueRepository;
        $this->GaleriesRepository = $GaleriesRepository;
    }

    public function indexnolocale()
    {
        return $this->redirectToRoute('app_index', ['_locale' => $this->getParameter('kernel.default_locale')]);
    }

    public function index(
            Request $request,
        )
    {
        $header = $this->HeaderRepository->getHeader();
        $statistiques = $this->StatistiqueRepository->getStatistique();
        $galeries = $this->GaleriesRepository->getGalerie();

        return $this->render('index.html.twig',[
            'action' => 'accueil',
            'header' => $header,
            'statistiques' => $statistiques,
            'galeries' => $galeries
        ]);
    }

}