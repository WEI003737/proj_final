<style>
    *{
    box-sizing: border-box;
    font-family: 'Noto Sans TC', sans-serif;
}

a{
    color: black;
}

dl,ol,ul,li{
    list-style: none;
    padding: 0;
    margin: 0;
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

.header a,
.header img,
.footer a,
.foot img{
    cursor: pointer;
}
.transition{
    transition:all .5s;
    -webkit-transition: all .5s;
}
.wrapper{
    max-width: 1440px;
    margin: 0 auto;
}
.object_fit{
    width: 100%;
    height: 100%;
    object-fit: cover;
    overflow: hidden;
}


/* --------------------------------------cart1----------------------------------------- */
.t_page_cart{
    width: 100%;
}
.t_wrap{
    margin: 0 auto;
    width: 1440px;
    max-width: 100%;
}
.t_step_panel{
    padding: 100px;
}
.t_step_panel ul{
    margin: 0 auto;
    text-align: center;
}
.t_step1,.t_step2,.t_step3{
    width: 80px;
    height: 80px;
    border-radius: 50%;
    border: 1px solid #CA054D;
    background-color: white;
    color: #000;
    flex-shrink: 0;
}
.t_step_panel ul li.t_icon_active{
    width: 80px;
    height: 80px;
    border-radius: 50%;
    background-color: #CA054D;
    color: white;
    flex-shrink: 0;
}
.t_step_panel ul li{
    text-align: center;
    margin: 0 100px;
    line-height: 80px;
    font-size: 25px;
    position:relative;

}
.t_step_panel>ul>li::before{
    content: "";
    display: block;
    width: 200px;
    position: absolute;
    left: -200px;
    height: 5px;
    background: #CA054D;
    top: 36px;
    }
    .t_step_panel>ul>li:nth-child(1)::before{
        display: none;
    }
.t_step_panel ul li p{
    color: #000;
    font-size: 18px;
}
.t_main_cart{
    margin: 0 auto;
    padding: 0 30px;
}
.t_grid-container_cart1,
.t_grid-container_cart2,
.t_grid-container_cart3{
    display: grid;
    grid-template-columns: 5% 10% 30% 10% 10% 10% 15% 5% 5%;
    background-color: transparent;
    padding: 10px;
    border-top: 1px solid #8F8F8F;
    border-bottom: 1px solid #8F8F8F;
    text-align: center;
}
.t_grid-container_cart1 h6,
.t_grid-container_cart2 h6,
.t_grid-container_cart3 h6{
    margin: 0;
}

.t_grid-container_cart1_productinfo,
.t_grid-container_cart2_productinfo,
.t_grid-container_cart3_productinfo{
    display: grid;
    grid-template-columns: 5% 10% 30% 10% 10% 10% 15% 5% 5%;
    background-color: transparent;
    padding: 10px;
    border-bottom: 1px solid #8F8F8F;
}

.t_grid-container_cart1_productinfo div,
.t_grid-container_cart2_productinfo div,
.t_grid-container_cart3_productinfo div{
    margin: 0;
    text-align: center;
    align-self: center;
}
.t_text_left h6{
    text-align: left;
}

.t_wea_product_main_count div{
        width: 30px;
        height: 30px;
        border: 1px solid #CA054D;
        background: #CA054D;
        color: white;
        text-align: center;
        line-height: 30px;
        -webkit-user-select:none;
}
.t_wea_product_main_count div.unckick{
    border: 1px solid #d8d8d8;
    background: #d8d8d8;
    color: white;
}
.t_wea_product_main_count .quantity{
    width: 75px;
    background: white;
    color: #CA054D;
}

.t_color_size_between{
    margin: 0 10px 0 0 ;
}

.t_grid-container_cart1_productinfo div h6,
.t_grid-container_cart2_productinfo div h6,
.t_grid-container_cart3_productinfo div h6{
    padding: 0px 20px;
    margin: 0;
}

.t_grid-container_cart1_productinfo .cart_img img,
.t_grid-container_cart2_productinfo .cart_img img,
.t_grid-container_cart3_productinfo .cart_img img{
    width: 120px;
    height: 155px;
}

.t_web_none{
    display: none;
}

hr.t_separation_line {
    width: 80px;
    height: 5px;
    background: #CA054D;
}

.t_cart1_subtotal{
    width: 40%;
}
.t_cart1_subtotal h5{
    padding: 0 0 10px;
    border-bottom: 1px solid #8F8F8F;
    margin: 0;
}
.t_grid-container_subtotal{
    display: grid;
    grid-template-columns: 60% 40%;
    background-color: transparent;
    padding: 10px;
}
.t_grid-container_subtotal div{
    font-size: 18px;
}

.t_cart1_checkout_btn{
   padding: 50px 0;
   text-align: right;
}

input.btn{
    background: #CA054D;
    color: white;
    width: 200px;
}
input.btn:hover{
    background: #840032;
    color: white;
}


@media screen and (max-width: 1100px) {
    .t_main_cart h5{
        border-bottom: 1px solid #8F8F8F;
        padding: 0 0 10px;
    }
    .t_grid-container_cart1,
    .t_grid-container_cart2,
    .t_grid-container_cart3,
    .t_grid-container_cart1_productinfo,
    .t_grid-container_cart2_productinfo,
    /* .t_grid-container_cart3_productinfo, */
    .t_cart1_subtotal{
        display: none;
    }

    .t_grid-container_cart1_productinfo_mobile,
    .t_grid-container_cart2_productinfo_mobile,
    .t_grid-container_cart3_productinfo_mobile{
        display: grid;
        grid-template-columns: 35% 40% 25% ;
        background-color: transparent;
        padding: 10px 0;
        border-bottom: 1px solid #8F8F8F;
        position:relative;
    }
    .t_grid-container_cart1_productinfo_mobile .cart_img,
    .t_grid-container_cart2_productinfo_mobile .cart_img,
    .t_grid-container_cart3_productinfo_mobile .cart_img{
        align-self: center;
    }
    .t_grid-container_cart1_productinfo_mobile .fa-times{
        position:absolute;
        right:30px;
        top:10px;
    }
    .t_grid-container_cart1_productinfo_mobile .cart_img img,
    .t_grid-container_cart2_productinfo_mobile .cart_img img,
    .t_grid-container_cart3_productinfo_mobile .cart_img img{
        width: 100px;
        height: 130px;
    }
    .t_text_left{
        padding: 10px;
    }
    
    .t_cart1_subtotal{
        display: block;
        width: 60%;
        margin: 0 20px;
    }
    .t_cart1_subtotal h5{
        display: none;
    }
    

}
@media screen and (max-width: 850px) {
    .t_step_panel{
        display: none;
    }
    .t_step_panel_mobile{
        display: block;
        padding: 50px;
    }
    .t_step_panel_mobile ul{
        margin: 0 auto;
        text-align: center;
    }
    .t_step_panel_mobile>ul>li{
        position: relative;
        flex-shrink: 0;
        width: 80px;
    }
    .t_step_panel_mobile>ul>li::after{
        content: "";
        display: block;
        position: absolute;
        top:0px;
        left: 50%;
        margin-left:-9px;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        border:1px solid #CA054D;
        background: #fff;
        z-index: 2;
    }
    .t_step_panel_mobile>ul>li::before{
        content:"";
        display: block;
        width: 120px;
        position: absolute;
        left: -80px;
        height: 4px;
        background: #CA054D;
        top:8px;
    }
    .t_step_panel_mobile>ul>li:nth-child(1)::before{
        display: none;
    }
    .t_step_panel_mobile>ul>li.active:after{
        background-color: #CA054D;

    }
    
    
    
    .t_step_panel_mobile ul li{
        line-height: 80px;
        color: #000;
        margin: 0 20px;
    }

    .t_wea_product_main_count div{
        width: 20px;
        height: 20px;
        border: 1px solid #CA054D;
        background: #CA054D;
        color: white;
        text-align: center;
        line-height: 20px;
        -webkit-user-select:none;
    }
    .t_wea_product_main_count #countnum{
        width: 60px;
        background: white;
        color: #CA054D;
    }
}
/* --------------------------------------cart2----------------------------------------- */
.t_top-amount{
    text-align: center;
    border-top: 1px solid #8F8F8F;
    font-size: 25px;
    padding: 30px 0 ;
}

.fa-angle-down{
    cursor: pointer;
}

.t_cart2_info{
    margin: 0 60px;
    width: 50%;
}

.form-group small.form-text {
    color: red;
}

.t_unfold{
    display: none;
}
.t_unfold .active{
    display: block;
}

.t_cart2_info h5{
    padding: 0 0 10px;
    margin: 0 0 50px;
    border-bottom: 1px solid #8F8F8F;
}

.t_cart2_subtotal{
    width: 100%;
}

hr.t_separation_line_gr_long {
    background: #8F8F8F;
    margin: 50px 0;
}

.t_text_right{
    text-align: right;
}

.col-md-12{
    padding-left: 0;
}
.t_terms_check{
    margin: 10px 0;
}
.t_terms_check a{
    color: #C9044D;
}

.t_cart2_backcart_btn,
.t_cart2_sendorder_btn,
.t_cart3_orderpage_btn,
.t_cart3_goshop_btn{
    padding: 50px;
}

input.btn-p{
    background: white;
    border:1px solid #CA054D;
    color: #CA054D;
    width: 200px;
}

input.btn-p:hover{
    background: #fef5ef;
    color: #CA054D;
}
@media screen and (max-width: 850px) {
    .t_flex-mobile-wrap{
        flex-wrap: wrap;
    }
    .t_cart2_info{
        margin: 0 30px;
        width: 100%;
    }
    .t_cart2_info h5{
        padding: 0 0 10px;
        margin: 0;
        border-bottom: none;
    }
    .t_mobile_none{
        display: none;
    }
    .t_cart2_subtotal{
        display: block;
        width: 100%;
        margin: 0 10px;
    }
    .t_terms_check{
        margin: 10px 20px;
    }
    .t_cart2_backcart_btn,
    .t_cart2_sendorder_btn{
        padding: 20px 10px;
    }

    input.btn,input.btn-p{
        width: 150px;
    }

    hr.t_separation_line_gr_long.web_none{
        display: block;
    }
}

/* --------------------------------------cart3----------------------------------------- */
.t_cart3_orderfinish{
    margin: 50px;
}
.t_cart3_orderfinish .check_img img{
    width: 100px;
    height: 100px;
}

.fa-check-circle{
    color: #CA054D;
    margin: 0 30px;
}
.t_justify_align_center{
    align-items: center;
    justify-content: center;
}
.t_cart3_orderfinish h5{
    margin: 0;
    text-align: justify;
}
.t_grid-container_orderdetail{
    display: grid;
    grid-template-columns: 30% 40% 30%;
    background-color: transparent;
    padding: 20px;
}
.t_grid-container_orderdetail div{
    padding: 5px;
}

.t_text_center{
    text-align: center;
}

.t_justify_align_end{
    justify-self: end;
    align-self: end
}

@media screen and (max-width: 850px) {
    .t_cart3_orderfinish_mobile{
        display: block;
    }
    .t_cart3_orderfinish_mobile div{
        text-align: center;
    }
    .t_cart3_orderfinish_mobile h5{
        text-align: center;
        font-size: 18px;
        margin: 20px 0 ;
        line-height: 40px;
    }
    
    .t_cart3_orderdetail_mobile{
        display: block;
    }
    .t_grid-container_orderdetail_mobile{
        display: grid;
        grid-template-columns: 40% 60%;
        background-color: transparent;
        padding: 20px;
    }
    .t_cart3_subtotal{
        margin: 20px;
        text-align: center;
    }
    
    .t_cart3_orderpage_btn,
    .t_cart3_goshop_btn{
        padding: 20px 10px;
    }


}

.t_cart3_subtotal{
        text-align: right;
    }
</style>