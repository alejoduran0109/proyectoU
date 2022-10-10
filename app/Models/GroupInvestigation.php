<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;


/**
 * Class GroupInvestigation
 * @package App\Models
 * @version October 9, 2022, 5:22 am +07
 *
 * @property integer $name
 * @property integer $description
 * @property integer $files
 * @property integer $code_group
 */
class GroupInvestigation extends Model
{
    use SoftDeletes;


    public $table = 'group_investigations';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'name',
        'description',
        'files',
        'code_group'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'integer',
        'description' => 'integer',
        'files' => 'integer',
        'code_group' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    
}
