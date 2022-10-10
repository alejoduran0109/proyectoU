<?php

namespace App\Repositories;

use App\Models\GroupInvestigation;
use App\Repositories\BaseRepository;

/**
 * Class GroupInvestigationRepository
 * @package App\Repositories
 * @version October 9, 2022, 5:22 am +07
*/

class GroupInvestigationRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'description',
        'files',
        'code_group'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return GroupInvestigation::class;
    }
}
