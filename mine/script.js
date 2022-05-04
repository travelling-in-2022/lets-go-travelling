let searchBtn = document.querySelector('#search-btn');
let searchBar = document.querySelector('.search-bar-container');
let formBtn = document.querySelector('#login-btn');
let loginForm = document.querySelector('.login-form-container');
let formClose = document.querySelector('#form-close');
let menuBtn = document.querySelector('#menu-bar');
let navbar = document.querySelector('.navbar');
let videoBtn = document.querySelectorAll('.vid-btn');


//滚动鼠标时，触发事件
window.onscroll = ()=>{
    searchBar.classList.remove("active");
    navbar.classList.remove("active");
    loginForm.classList.remove("active");
}

searchBtn.addEventListener('click',()=>{
    searchBar.classList.toggle("active");
})

formBtn.addEventListener('click',()=>{
    loginForm.classList.toggle("active");
})

formClose.addEventListener('click',()=>{
    loginForm.classList.remove("active");
})

menuBtn.addEventListener('click',()=>{
    navbar.classList.toggle("active");
})

videoBtn.forEach(btn=>{
    btn.addEventListener('click',()=>{
        document.querySelector('.controls .active').classList.remove('active');
        btn.classList.add('active');
        // 用以获取HTML元素的属性
        let src=btn.getAttribute('data-src');
        document.querySelector('#video-slider').src=src;
    })
})


var mySwiper = new Swiper ('.review-slider', {
		// effect:'coverflow',          //滑动效果
		// touchAngle : 30,          //滑动的角度超过30度无效
			// // 轮播图的方向，也可以是vertical方向
		// direction:'horizontal',
        //环形切换关闭
        loop: true,
        // 切换的速度
        speed:400,  })           //滑动或者自动换页时的速度
	        // 如果需要分页器
// 	        pagination: {
// 	            el: '.swiper-pagination',
// 	            clickable:true,
// 	            type:'bullets',
// 	        },
// 	        paginationClickable:true,
// 	// 这样，即使我们滑动之后， 定时器也不会被清除
// 	       autoplayDisableOnInteraction : false,
	           
// 	        on: {  //滑动调用该方法
// 	        	slideChangeTransitionEnd: function(){
// 	        		var slide = this.activeIndex;
// 	        		//测试用
// //	        		alert("当前位置："+slide);//滑动结束时，告诉我现在是第几个slide（第几页）
// 	        	},
// 	        },   
// 	      });
// 		mySwiper.pagination.bullets.css('background','white');  

var swiper = new Swiper ('.brand-slider', {
    spaceBetween:20,
    loop: true,
    autoplay: {
        delay:2500,
        autoplayDisableOnInteraction : false,
    },
    breakpoints: {
        705:{
            slidesPerView:3,
        },
        800:{
            slidesPerView:4,
        },
        1200:{
            slidesPerView:5,
        },
    },
    // 切换的速度
    speed:400,  })  
