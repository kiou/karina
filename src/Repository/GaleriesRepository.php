<?php

namespace App\Repository;

use App\Entity\Galeries;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Galeries>
 *
 * @method Galeries|null find($id, $lockMode = null, $lockVersion = null)
 * @method Galeries|null findOneBy(array $criteria, array $orderBy = null)
 * @method Galeries[]    findAll()
 * @method Galeries[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class GaleriesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Galeries::class);
    }

    public function save(Galeries $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Galeries $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function getGalerie()
    {
        $qb = $this->createQueryBuilder('g');

        $qb->andWhere('g.isActive =  :isActive')
            ->setParameter('isActive', true)
            ->orderBy('g.id', 'DESC')
            ->setMaxResults(10);
   
        return $qb->getQuery()->getResult();
    }
}
