<?php

namespace App\Models;

use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $id
 * @property string $kategori
 * @property float $sembako
 * @property float $sandang
 * @property float $perumahan
 * @property float $kesehatan
 * @property float $transportasi
 * @property float $informasi
 * @property float $rekreasi
 * @property float $pendidikan
 * @property float $penyedia_pangan
 * @property float $perawatan_pribadi
 * @property int $total
 * @property string $created_at
 * @property string $updated_at
 */
class Inflasi extends Model
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
    protected $fillable = ['kategori', 'sembako', 'sandang', 'perumahan', 'kesehatan', 'transportasi', 'informasi', 'rekreasi', 'pendidikan', 'penyedia_pangan', 'perawatan_pribadi', 'total', 'created_at', 'updated_at'];
}
