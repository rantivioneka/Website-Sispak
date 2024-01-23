<?php
include 'koneksi.php';

if(isset($_POST['submit'])){
    $qry='select id from tb_gejala where ';
    array_pop($_POST);
    $rule_input=array();
    
    foreach ($_POST as $where) {
        $qry.=$where."=1 and ";
        array_push($rule_input,$where);
    }
    
    $qry.="1=1";
    $data=mysqli_query($kon,$qry);
    $id='';
    $rule=array(
        array("G001","G002","G003","G004","G005","G006"),
        array("G001","G002","G003","G004"),
		array("G001","G002","G003","G005"),
        array("G001","G002","G003","G006"),
        array("G001","G003","G004","G005"),
        array("G001","G003","G005","G006"),
        array("G001","G004","G005","G006"),
        array("G001","G002","G004","G005"),
        array("G001","G002","G005","G006"),
        array("G001","G002","G003","G004","G005"),
        array("G001","G002","G003","G004","G006"),
        array("G001","G003","G004","G005","G006"),
        array("G001","G002","G004","G005","G006"),
        array("G001","G002","G003","G005","G006"),

        array("G001","G002","G015","G016","G017"),
        array("G001","G002","G015","G016"),
        array("G001","G002","G015","G017"),
        array("G001","G015","G016","G017"),
        array("G001","G002","G016","G017"),
        
        array("G001","G003","G009","G010","G011","G012"),
        array("G001","G003","G009","G010"),
        array("G001","G003","G009","G011"),
        array("G001","G003","G009","G012"),
        array("G001","G009","G010","G011"),
        array("G001","G009","G010","G012"),
        array("G001","G002","G010","G011"),
        array("G001","G003","G010","G011"),
        array("G001","G003","G009","G010","G011"),
        array("G001","G003","G009","G010","G012"),
        array("G001","G009","G010","G011","G012"),
        array("G001","G010","G011","G012","G003"),
        array("G001","G011","G012","G003","G009"),
        array("G001","G011","G012","G003"),

        array("G007","G008","G019","G020","G021"),
        array("G007","G008","G019","G020"),
        array("G007","G008","G019","G021"),
        array("G007","G019","G002","G021"),
        array("G007","G020","G021","G008"),

        array("G001","G002","G009","G013","G014","G018"),
        array("G001","G002","G009","G013"),
        array("G001","G002","G009","G014"),
        array("G001","G002","G009","G018"),
        array("G001","G009","G013","G014"),
        array("G001","G009","G014","G018"),
        array("G001","G013","G014","G018"),
        array("G001","G013","G014","G002"),
        array("G001","G014","G018","G002"),
        array("G001","G014","G018","G009"),
        array("G001","G002","G009","G013","G014"),
        array("G001","G002","G009","G013","G018"),
        array("G001","G009","G013","G014","G018"),
        array("G001","G013","G014","G018","G002"),
    );
    
    $status=false;
    
    foreach ($rule as $r) {
        sort($r);
        sort($rule_input);
        if ($r == $rule_input) {
            $status=true;
            break;
        }
    }
    
    if($status){
        while ($d=mysqli_fetch_array($data)) {
            $id=$d['id'];
        }
        
        $cari_penyakit="select * from tb_penyakit where id=$id";
        $db=mysqli_query($kon,$cari_penyakit);
        
        while ($d=mysqli_fetch_array($db)) {
            $penyakit=$d['penyakit'];
            $info=$d['info'];
            $solusi=$d['solusi'];
            include 'hasil.php';
        }
    } else {
        include 'error.php';
    }
} else {
    echo "Berhasil";
}
?>
