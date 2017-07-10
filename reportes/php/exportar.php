<?php
/**
 * Created by PhpStorm.
 * User: elias
 * Date: 09-07-17
 * Time: 20:22
 */
require_once ("../PHPExcel/Classes/PHPExcel.php");

    $objPHPExcel = new PHPExcel();

    //Informacion del excel
    $objPHPExcel->
    getProperties()
        ->setCreator("ingenieroweb.com.co")
        ->setLastModifiedBy("ingenieroweb.com.co")
        ->setTitle("Exportar excel desde mysql")
        ->setSubject("Ejemplo 1")
        ->setDescription("Documento generado con PHPExcel")
        ->setKeywords("ingenieroweb.com.co  con  phpexcel")
        ->setCategory("ciudades");

    $i = 1;

    if (isset($_COOKIE['registros'])){
        $array=json_decode($_COOKIE['registros']);

        print_r($array);
        exit();

        $objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A'.$i, $array);

        $i++;




        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="ejemplo1.xlsx"');
        header('Cache-Control: max-age=0');

        $objWriter=PHPExcel_IOFactory::createWriter($objPHPExcel,'Excel2007');
        $objWriter->save('php://output');
        exit;

    }else{
        echo "vacio";
        exit();
    }
