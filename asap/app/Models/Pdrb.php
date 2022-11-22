<?php

namespace App\Models;

use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $id
 * @property string $kategori
 * @property float $a
 * @property float $b
 * @property float $c
 * @property float $d
 * @property float $e
 * @property float $f
 * @property float $g
 * @property float $h
 * @property float $i
 * @property float $j
 * @property float $k
 * @property float $l
 * @property float $m_n
 * @property float $o
 * @property float $p
 * @property float $q
 * @property float $r_s_t_u
 * @property float $total
 * @property string $created_at
 * @property string $updated_at
 */
class Pdrb extends Model
{
    use Filterable;
    /**
     * The "type" of the auto-incrementing ID.
     * 
     * @var string
     */
    protected $keyType = 'integer';

    /**
     * @var array
     */
    protected $fillable = ['kategori', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm_n', 'o', 'p', 'q', 'r_s_t_u', 'total', 'created_at', 'updated_at'];
}
