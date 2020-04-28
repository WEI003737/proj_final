<?php
require __DIR__ . '/__connect_db.php';
$page_name = 'product_list';

//-------------------篩選:頁數、商品類別、---------------------------------

$perPage = 8;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$cate = isset($_GET['cate']) ? intval($_GET['cate']) : 0;


//get的內容 要用http_build_query輸出
$my_qs = $_GET;
//print_r($my_qs);
//可篩選的顏色種類 (test)
$selectColor = ['red','black','blue','pink'];
$selectColorCount = count($selectColor);

//-----------------------------點商品類別 列出該類別商品---------------------------------
//怎麼篩2個以上的東西??????????????????????????????????????????
$where = " WHERE 1 ";
$orderBy = "";
$selectDate = '';
$selectPrice = '';

if(!empty($cate)) {
    $where .= " AND cate_sid = $cate ";
//    $my_qs['cate'] = $cate;
};
if(!empty($selectDate)) {
    $orderBy .= " ORDER BY created_date $selectDate ";
    unset($my_qs['$selectPrice']);
};
if(!empty($selectPrice)) {
    $orderBy .= " ORDER BY price $selectPrice ";
    unset($my_qs['$selectDate']);
};

//取得總筆數
$totalRows = $pdo->query("SELECT COUNT(1) FROM products $where ")
    ->fetch(PDO::FETCH_NUM)[0];

//算總頁數
$totalPages = ceil($totalRows / $perPage);

($page < 1) ? ($page = 1) : false;
($page > $totalPages) ? ($page = $totalPages) : false;

//-----------------------------總商品資料 + 商品圖---------------------------------
//如果有資料
if($totalRows>0){
    //總商品sql
    $totalProductSql = sprintf("SELECT * FROM products $where $orderBy LIMIT %s, %s  ", ($page-1)*$perPage, $perPage);
    //總商品資料
    $totalProductStmt = $pdo -> query($totalProductSql);
    $totalProducts = $totalProductStmt -> fetchAll();

//    另一種資料撈法------------------------------------------------------------------------------------
//    $dictProducts = [];
//    $proSids = [];
//
//    foreach($totalProducts as $pro){
//        $dictProducts[ $pro['sid'] ] = $pro;
//        $proSids[] = $pro['sid'];
//    }
//
//    $colorSql = sprintf("SELECT * FROM `color` WHERE `pro_sid` IN (%s)", implode(',', $proSids));
//    $totalColorStmt = $pdo -> query($colorSql);
//    $totalColors = $totalColorStmt -> fetchAll();
//
//    $i=0;
//    foreach($totalColors as $c){
//        $dictProducts[$i]['color'] = $c;
//        $i++;
//    }
//    print_r($dictProducts);
//    print_r($totalColors);
//    另一種資料撈法------------------------------------------------------------------------------------



    //商品資料最後，塞入從 color 資料表拿出的，該商品的其中一種顏色的圖片(陣列)
    $i=0;
    foreach($totalProducts as $value){
        //加入照片陣列
        //LIMIT 限制筆數
//        $productPics = $pdo -> query("SELECT `pro_pic` FROM `color` WHERE `pro_sid`= ".$value["sid"]);
//        $totalProductPics = $productPics -> fetchAll();
//        $totalProducts[$i]["pictures"]=$totalProductPics;

        //加入每個款式的顏色數量
        $colorLengthSql = $pdo -> query("SELECT *,count(pro_sid) FROM `color` WHERE `pro_sid`= ".$value["sid"]." GROUP BY `pro_sid`");
        $colorLength = $colorLengthSql -> fetch();
        $totalProducts[$i]["colorLength"] = $colorLength['count(pro_sid)'];

        //加入顏色陣列
        //加入顏色照片陣列
        $colorArrSql = $pdo -> query("SELECT `color`,`sid` AS `color_sid`,`pro_pic`  FROM `color` WHERE `pro_sid`= ".$value["sid"]." ORDER BY `sid`");
        $colorArr = $colorArrSql -> fetchAll();
        $totalProducts[$i]["colorArr"] = $colorArr;

//尺寸跟庫存叫不出來: echo $colorArr有 但 echo $totalProducts 看不到????----------------------------????????????

        // for($j=0; $j<= ($totalProducts[$i]["colorLength"]-1); $j++){
        //     $sizeSql = $pdo->query("SELECT `size`,`in_stock` FROM `size` WHERE `color_sid`= " . $colorArr[$j]["color_sid"]." ORDER BY `sid` ");
        //     $sizeArr = $sizeSql -> fetchAll();
        //     $colorArr[$j]["size"] = $sizeArr;
        // };

        $j=0;
        foreach($totalProducts[$i]["colorArr"] as $color){
            $sizeSql = $pdo->query("SELECT `sid` AS `size_sid`, `size`,`in_stock` FROM `size` WHERE `color_sid`= " . $color["color_sid"]." ORDER BY `sid` ");
            $sizeArr = $sizeSql -> fetchAll();
            $totalProducts[$i]["colorArr"][$j]["size"] = $sizeArr;
            $j++;
        }

        $i++;
    }

};

//echo json_encode($totalProducts, JSON_UNESCAPED_UNICODE);


//-----------------------------商品選單---------------------------------

$categoriesStmt = $pdo -> query("SELECT * FROM `categories`");
$categoriesRow = $categoriesStmt -> fetchAll();
//echo json_encode($categoriesRow);

?>

<!doctype html>
<html lang="en">
  <head>
    <title>product list</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


      <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <?php include __DIR__ . '/parts/h_f_link.php' ?>
    <?php include __DIR__ . '/parts/h_f_css.php' ?>

  </head>
  <style>
    /* * {
        outline: #FA8000 solid 1px;
    } */
    .show-mobile{
            display: none;
    }
    @media screen and (max-width: 992px){
        .show-desktop{
            display: none;
        }
        .show-mobile{
            display: block;
        }
    }
    
    .wea_wrapper{
        max-width: 1440px;
        margin:0 auto;
    }
    h1,h2,h3,h4,h5,h6,p{
        padding: 0;
        margin: 0;
    }
    ul,li{
        list-style: none;
        padding: 0;
        margin: 0;
    }
    a, a:link{
        color:#272838;
        display: block;
        text-decoration: none;
        font-size: 18px;
    }
    a:hover,a:active{
        color: #C9044D;
    }
    h1{
        font-size: 90px;
    }
    h2{
        font-size: 72px;
    }
    h3{
        font-size: 54px;
    }
    h4{
        font-size: 36px;
    }
    h5{
        font-size: 20px;
    }
    h6{
        font-size: 18px;
    }
    p{
        font-size: 15px;
    }
    /* ================================== #ootd ============================== */
    .wea_ootd{
        width: 100%;
        margin-top: 120px;
    }
    .wea_ootd_img{
        width: 100%;
        height: 460px;
        overflow: hidden;
        background: #FEF5EF;
    }
    .wea_ootd_slider_img{
        height: 100%;
        transition: .5s;
        left:0;
    }
    .wea_ootd_slider_img li{
        flex: 1 0 0;
    }
    .wea_ootd_slider_img img{
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .wea_ootd_img>div{
        padding-top:30px;
    }
    .wea_ootd_dec{
        max-width: 1500px;
        height: 400px;
        margin: auto;
    }
    .wea_ootd_dec div:first-child{
        width: 210px;
        height: 90px;
        right: 30px;
        top: 0px;
        border-top:4px solid #C9044D;
        border-right:4px solid #C9044D;;
    }
    .wea_ootd_dec div:last-child{
        width: 90px;
        height: 210px;
        left: 30px;
        bottom: 0pt;
        border-left:4px solid #C9044D;
        border-bottom:4px solid #C9044D;;
    }
    .wea_ootd_dec h1{
        left: 120px;
        bottom: 0px;
        color: #C9044D;
    }
    .wea_slider_point{
        margin: 18px 0 60px;
    }
    .wea_slider_point li{
        background-color: #C9044D;
        opacity: .2;
        height: 10px;
        width: 48px;
        margin: 0 4px;
    }
    .wea_slider_point li.active{
        background-color: #C9044D;
        opacity: 1;
    }
    @media screen and (max-width: 992px){
    .wea_ootd_img{
        height: 200px;
    }
    .wea_ootd_img>div{
        padding-top:20px;
    }
    .wea_ootd_dec{
        height: 160px;
    }
    .wea_ootd_dec div:first-child{
        width: 120px;
        height: 60px;
        right: 20px;
        top: 0px;
        border-top:2px solid #C9044D;
        border-right:2px solid #C9044D;;
    }
    .wea_ootd_dec div:last-child{
        width: 60px;
        height: 120px;
        left: 20px;
        bottom: 0pt;
        border-left:2px solid #C9044D;
        border-bottom:2px solid #C9044D;;
    }
    .wea_ootd_dec h1{
        left: 80px;
        font-size: 54px;
    }
    .wea_slider_point{
        margin: 18px 0 30px;
    }
    .wea_slider_point{
        margin: 10px 0 40px;
    }
    .wea_slider_point li{
        height: 5px;
        width:35px;
        margin: 0 4px;
    }
    }
    @media screen and (max-width: 625px){
        .wea_ootd{
            margin-top: 60px;
        }
        .wea_ootd_dec h1{
        font-size: 36px;
    }
    }
    /* ===================================== 商品選單 ===================================== */
    .wea_product_select_bar{
        padding: 0 30px;
    }
    .wea_product_select_bar ul{
        margin-bottom: 20px;
    }
    .wea_product_select_bar h5{
        margin-bottom: 30px;
    }
    .wea_product_select_bar h6{
        margin-bottom: 15px;
    }
    .wea_product_select_bar p{
        margin-bottom: 12px;
    }
    .wea_product_select_bar ul>li:last-child{
        margin-bottom:30px;
    }
    /* ===================================== 商品列表 ===================================== */
    /* ======================================= 篩選 ======================================= */
    .wea_product_list_header{
        justify-content:space-between;
    }
    .wea_product_list_tital{
        padding-top: 4px;
        flex-grow: 1;
    }
    .wea_product_list_changebar{
        border-bottom: 1px solid #272838;
        margin-left: 20px;
        padding-bottom: 4px;
    }
    .wea_product_list_changebar:last-child{
        margin-right: 30px;
    }
    .wea_product_list_changebar span{
        margin: 0 4px 0 8px;
    }
    .wea_product_list_changebar i{
        margin: 0 8px 0 4px;
    }
    /* 手機 */
    /* 展開 */
    .wea_product_list_showall_mobile{
        left: -220px;
        transition: .3s;
    }
    .wea_product_list_showall_mobile.active{
        left: 0px;
    }
    .wea_product_list_tital_seclect{
        width: 220px;
        height:720px;
        top: 3px;
        left: -20px;
        transform: rotate(-2deg);
        background: #C9044D;
        transition: .5s;
    }
    .wea_product_select_bar.show-mobile{
        width: 150px;
        margin:30px 8px 0 0px;
        padding: 0 0 0 20px;
    }
    .wea_product_select_bar.show-mobile h5{
        margin-bottom: 12px;
    }
    .wea_product_select_bar.show-mobile h6,.wea_product_select_bar.show-mobile h5,.wea_product_select_bar.show-mobile p{
        color: white;
    }
    .wea_product_select_bar.show-mobile i{
        margin:2px 8px 0 0;
        color: white;
    }
    .wea_product_list_header_mobile{
        width: 150px;
        height: 60px;
        left: 0;
        top: -20px;
        /* border:1px solid #991212; */
    }
    /* 收起狀態 */
    .wea_product_list_one_mobile{
        left: 0;
        transition: .3s;
    }
    .wea_product_list_one_mobile.active{
        left: -170px;
    }
    .wea_product_list_titalbox_mobile{
        width: 170px;
        height: 50px;
        top: 3px;
        left: -25px;
        transform: rotate(-2deg);
        background: #C9044D;
        transition: .5s;
    }
    .wea_product_list_tital_mobile{
        top: 3px;
        left: -25px;
    }
    .wea_product_list_tital_mobile i{
        margin:18px 8px 0 45px;
        transform: scale(1.2);
        color: white;
    }
    .wea_product_list_tital_mobile span{
        font-size: 18px;
        color: white;
    }
    @media screen and (max-width: 992px){
        .wea_product_list_header{
        justify-content:flex-end;
    }
        .wea_product_list_tital{
        margin-left: 20px;
    }
    .wea_product_list_changebar:last-child{
        margin-right: 20px;
    }
    }
    @media screen and (max-width: 625px){
        .wea_product_list_changebar{
        margin-left: 10px;
        padding-bottom: 0px;
    }    
        .wea_product_list_changebar span{
        font-size: 15px;
        margin: 0 2px 0 4px;
    }
    .wea_product_list_changebar i{
        margin: 0 4px 0 2px;
    }
    }
    /* ======================================= 商品 ======================================= */
    .wea_product_list{
        margin-top: 20px;
        margin-right: 30px;
    }
    .wea_product_list_item{
        /* flex-grow: 1; */
        margin-bottom: 30px;
    }
    .wea_product_list_item img{
        width: 275px;
    }
    .wea_product_list_item i{
        right: 0;
        top: 0;
        margin: 20px;
        transform: scale(1.5);
        color: #C9044D;
    }
    .wea_product_list_item>p{
        margin-top: 4px;
    }
    /* .wea_product_list_item_img{
        width: 285px;
        height: 350px;
        background: url('/img/0.png') no-repeat;
        background-size: cover;
    } */
    .wea_product_list_item_price{
        color: #C9044D;
        flex-grow: 1;
    }
    .wea_product_list_item_color{
        width: 20px;
        height: 20px;
        border-radius: 50%;
        margin-left: 8px;
        background: #272838;
    }
    .wea_product_list_item_color.pink{
        background: #ffb6b6;
    }
    .wea_product_list_item_color.gray{
        background: #bebebe;
    }
    @media screen and (max-width: 992px){
        .wea_product_list{
        margin-left: 20px;
        margin-right: 20px;
        }
    }
    @media screen and (max-width: 625px){
        .wea_product_list_item{
        width: 47.5%;
    }
        .wea_product_list_item img{
        width: 100%;
    }
    }
    /* ======================================= 頁碼 ======================================= */
    .wea_product_list_page{
        margin: 30px 30px 90px 0;
        justify-content: flex-end;
    }
    .wea_product_list_page a{
        margin-left: 20px;
    }
    @media screen and (max-width: 625px){
        .wea_product_list_page{
        margin: 30px 0px 90px 0;
        justify-content: center;
    }
    }
    /* ================================= 消失物件 display:none =================================== */
    .display_none{
        display: none;
    }
  </style>
  <body>
  <?php include __DIR__ . '/parts/header.php' ?>

  <!-- =================================== #ootd =================================== -->
    <div class="wea_ootd">
        <div class="wea_ootd_img position-relative">
            <ul class="list-unstyled wea_ootd_slider_img d-flex position-absolute">
                <!-- <li><img src="img/ootd1.png" alt=""></li> -->
            </ul>
            <div>
                <div class="wea_ootd_dec position-relative">
                    <div class="position-absolute"></div>
                    <h1 class="position-absolute"> #OOTD</h1>
                    <div class="position-absolute"></div>
                </div>
            </div>
        </div>
        <ul class="list-unstyled wea_slider_point d-flex justify-content-center">
            <!-- <li class="active"></li> -->
        </ul>
    </div>
  <!-- =================================== 新增收藏提醒 (test) =================================== -->
  <div id="a_add_to_alarm" class="alert alert-info" role="alert" style="display:none">
  </div>
    <!-- =================================== 選單 =================================== -->
    <div class="wea_wrapper">
        <div class="row no-gutters">
            <div class="col-sm-2">
                <ul class="show-desktop wea_product_select_bar">
                    <ul ><a href="?"><h5>所有商品</h5></a></a></ul>
                    <?php foreach($categoriesRow as $nav):  ?>
                        <ul><a href="?<?php
                            $my_qs['cate'] = $nav['sid'];
                            echo http_build_query($my_qs);?>"><h6><?= $nav['parent'] ?></h6></a></ul>
                        <li><a href="?<?php
                            $my_qs['cate'] = $nav['sid'];
                            echo http_build_query($my_qs);?>"><p><?= $nav['name'] ?></p></a></li>
                    <?php endforeach; ?>

                </ul>
            </div>

    <!-- ===================================== 商品列表 ===================================== -->
    <!-- ======================================= 篩選 ====================================== -->
            <div class="col-lg-10">
                <div class="position-relative">
                    <div class="d-flex wea_product_list_header">
                        <h5 class="show-desktop wea_product_list_tital ">所有商品</h5>
                        <div id="wea_product_list_filter" class="wea_product_list_changebar d-flex">
                            <span>顏色</span><i class="fas fa-chevron-down"></i>
                            <?php for($c=0; $c<=($selectColorCount-1); $c++):?>
                                <a href=""><?= $selectColor[$c] ?></a>
                            <?php endfor; ?>
                            <span>價格</span><i class="fas fa-chevron-down"></i>
                            <input type="text" placeholder="請輸入最低價格">
                            <input type="text" placeholder="請輸入最高價格">
                        </div>
                        <div id="wea_product_list_sort" class="wea_product_list_changebar d-flex">
                            <a href="?<?php
                            $my_qs['selectDate'] = 'DESC';
                            echo http_build_query($my_qs);?>">新到舊</a><i class="fas fa-chevron-down"></i>
                            <a href="?<?php
                            $my_qs['selectDate'] = 'ASC';
                            echo http_build_query($my_qs);?>">舊到新</a><i class="fas fa-chevron-down"></i>
                            <a href="?<?php
                            $my_qs['selectPrice'] = 'DESC';
                            echo http_build_query($my_qs);?>">價錢高到低</a><i class="fas fa-chevron-down"></i>
                            <a href="?<?php
                            $my_qs['selectPrice'] = 'ASC';
                            echo http_build_query($my_qs);?>">價錢低到高</a><i class="fas fa-chevron-down"></i>

                        </div>
                    </div>
                    <!-- 手機 -->
                    <div class="show-mobile wea_product_list_header_mobile position-absolute">
                        <!-- 展開狀態 -->
                        <div class="position-relative wea_product_list_showall_mobile">
                            <div class="wea_product_list_tital_seclect position-absolute"></div>
                            <ul class="position-absolute wea_product_select_bar show-mobile">
                                <ul><a class="d-flex"><h5>所有商品</h5></a></a></ul>
                                <?php foreach($categoriesRow as $nav):  ?>
                                    <ul><a href="?<?php
                                        $my_qs['cate'] = $nav['sid'];
                                        echo http_build_query($my_qs);?>"><h6><?= $nav['parent'] ?></h6></a></ul>
                                    <li><a href="?<?php
                                        $my_qs['cate'] = $nav['sid'];
                                        echo http_build_query($my_qs);?>"><p><?= $nav['name'] ?></p></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <!-- 收起狀態 -->
                        <div class="position-relative wea_product_list_one_mobile">
                            <div class="wea_product_list_titalbox_mobile position-absolute"></div>
                            <div class="wea_product_list_tital_mobile position-absolute">
                                <i class="fas fa-chevron-left"></i><span>所有商品</span>
                            </div>
                        </div>
                    </div>
                </div>
    <!-- ======================================= 商品 ====================================== -->
                <ul class="wea_product_list d-flex justify-content-between flex-wrap">
                    <?php foreach($totalProducts as $t):
                    $pictureArr = json_decode($t['colorArr'][0]['pro_pic']); //把字串變陣列
                    // var_dump(json_decode($t["pictures"]["pro_pic"], true));
                    ?>
                    <li class="wea_product_list_item position-relative">
                        <img src="./images/<?=$pictureArr[0]?>.png" alt="">
                        <i class="a_add_to_like_unactive far fa-heart position-absolute" data-proSid="<?=$t['sid']?>"></i>
                        <i class="a_add_to_like_active fas fa-heart position-absolute display_none"></i>

                        <!-- <div class="wea_product_list_item_img"></div> -->
                        <p><?= $t['name']; ?></p>
                        <div class="d-flex justify-content-between">
                            <p class="wea_product_list_item_price">$<?= $t['price']; ?></p>
                            <?php for($i=1; $i<=$t['colorLength']; $i++): ?>
                                <div class="wea_product_list_item_color" style="background: <?= $t['colorArr'][$i-1]['color'] ?>"></div>
                            <?php endfor; ?>
                        </div>
                    </li>
                    <?php endforeach; ?>
                </ul>
    <!-- ======================================= 頁碼 ====================================== -->
                <div class="wea_product_list_page d-flex">
                    <a href="?<?=
                    $my_qs['page']=$page-1;
                    echo http_build_query($my_qs)?>">
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <?php for($i = 1; $i <= $totalPages; $i++):
                        $my_qs['page']=$i;?>
                        <a href="?<?= http_build_query($my_qs); ?>"><?= $i ?></a>
                    <?php endfor; ?>
                    <a href="?<?=
                    $my_qs['page']=$page+1;
                    echo http_build_query($my_qs)?>">
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div> 
        </div>
    </div>
    <?php include __DIR__ . '/parts/footer.php' ?>


  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<!--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>-->
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/fontawesome.min.js"></script>-->
    <!-- 滑動圖片 -->
    <script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
    <?php include __DIR__ . '/parts/h_f_script.php' ?>
  <script>
//加入最愛-----------------------------
//還要寫刪除最愛???????????????????????????????????????????????????????????
//檢查是否已登入，登入才顯示愛心
      $(".a_add_to_like_unactive").click(function(){
          //加入最愛圖示
          $(this).siblings(".a_add_to_like_active").removeClass("display_none");
          //傳送 colorSid 給後端
          const a_likeProSid = $(this).attr("data-proSid");

          $.get('_add_to_like_api.php', {a_likeProSid}, function(data){
              if(data.success){
                  console.log(data);
                  $("#a_add_to_alarm").show().text('成功加入收藏');
                  setTimeout(function(){
                      $("#a_add_to_alarm").hide();
                  }, 1000);
              }

          }, 'json');
      })
  </script>
  <script>
        var index=0;
        var slideWidth=$(".wea_ootd_img").width();
        var slideImages=[ "ootd1.png", "ootd2.jpg","ootd3.jpg","ootd4.png","ootd5.png"];
        var slideCount=slideImages.length;
        var slideImagesContent="";
        var slidePoint="";
        //#ootd slider初始化新增元件
        for(let i=0; i<slideCount; i++){
            slideImagesContent=slideImagesContent+`<li><img src="img/${slideImages[i]}" alt=""></li>`;
            slidePoint=slidePoint+"<li></li>"
        }
        $(".wea_ootd_slider_img").append(slideImagesContent);
        $(".wea_slider_point").append(slidePoint);
        //#ootd slider起始值
        $(".wea_slider_point li").eq(0).addClass("active")
        $(".wea_ootd_slider_img").css("width", slideCount*slideWidth)
        //#ootd slider滑鼠觸碰點點      
        $(".wea_slider_point li").mouseenter(function(){
            //li物件從0開始
            index=$(this).index();
            goTo()
        })
        //#ootd slider自動播放
        var ootd_slider_auto = window.setInterval(function(){
            index++;
                if(index>=slideCount){
                index=0;
            } 
                goTo();
        },3000)
        //#ootd slider手指滑動切圖
        $(".wea_ootd_img").swipe({
            threshold: 0,
            swipe:function(event, direction, distance, duration, fingerCount, fingerData, currentDirection) {
            // console.log([event, direction, distance, duration, fingerCount, fingerData, currentDirection]);
            if(direction == 'right'){
                index--;
                if(index<0){
                    index=slideCount-1;
                }
                goTo();
            }else if(direction == 'left'){
                index++;
                if(index>=slideCount){
                index=0;
            } 
                goTo();
            }
        }
        })
        $(".wea_ootd_img").swipe( {fingers:1} );
        //#ootd slider函式>圖片滑動、點點顯示改變
        function goTo(){
            var slideMove=0-index*slideWidth;
            $(".wea_ootd_slider_img").css("left", slideMove )
            $(".wea_slider_point li").eq(index).addClass("active")
            .siblings().removeClass("active")
        }
        // #ootd slider螢幕尺寸改變時圖片大小變動
        $(window).resize(function(){
            slideWidth=$(".wea_ootd_img").width()
            $(".wea_ootd_slider_img").css("width", slideCount*slideWidth)
            goTo()
        })
    </script>
    <!-- 手機版的選單 -->
    <script>
        // 宣告＋預設值
        let select_tital ="";
        $(".wea_product_select_bar.show-mobile a:has(h5)").prepend(`<i class="fas fa-chevron-right"></i>`);
        // 變化開始
        $(".wea_product_list_one_mobile").click(function(){
            $(this).addClass("active");
            setTimeout(() => {
            $(".wea_product_list_showall_mobile").addClass("active");
        }, 100);
        })
        $(".wea_product_select_bar.show-mobile a").click(function(){
            select_tital=$(this).text();
            $(".wea_product_select_bar.show-mobile i").remove();
            $(this).prepend(`<i class="fas fa-chevron-right"></i>`);
            $(".wea_product_list_tital_mobile span").text(select_tital);
            $(".wea_product_list_showall_mobile").removeClass("active");
            setTimeout(() => {
            $(".wea_product_list_one_mobile").removeClass("active");
        }, 100);
        })
    </script>
  </body>
</html>