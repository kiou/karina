<?php
namespace App\Controller;

use App\Entity\Page;
use App\Repository\PageRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PageController extends AbstractController
{

    private $PageRepository;

    public function __construct(
            PageRepository $PageRepository,
        )
    {
        $this->PageRepository = $PageRepository;
    }

    public function view(Page $id, PageRepository $PageRepository)
    {
        $page = $PageRepository->find($id);

        return $this->render('page.html.twig',[
            'page' => $page
        ]);

    }

    public function getLink(Page $id){

        $page = $this->PageRepository->find($id);

        return new Response($this->generateUrl('app_pages_view',['slug' => $page->getSlug(), 'id' => $page->getId()]));
        
    }
}