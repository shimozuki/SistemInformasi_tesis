<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class LaporanTesis implements FromCollection, WithHeadings, WithEvents
{
    protected $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function collection()
    {
        return $this->data;
    }

    public function headings(): array
    {
        return [
            'NIM',
            'Nama',
            'Topik Tesis Diterima'
        ];
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class => function (AfterSheet $event) {
                // Style the title
                $event->sheet->getStyle('A3')->getFont()->setBold(true)->setSize(16);
                $event->sheet->getStyle('E3')->getAlignment()->setHorizontal('center');
                
                // Optionally, you can style the headings
                $event->sheet->getStyle('A3:D3')->getFont()->setBold(true);
                $event->sheet->getStyle('A3:D3')->getAlignment()->setHorizontal('center');
            },
        ];
    }
}

