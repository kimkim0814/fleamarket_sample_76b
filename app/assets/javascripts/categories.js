$(function(){
  
  $(".category__parent").hide(); 
  $(".category__child").hide(); 
  $(".category__grandchild").hide(); 

  $(".left-box--first").hover(
    function () {
      $(".category__parent").show(); 
    },
    function () {
      $(".category__parent").hide();
    }
  );

  $(".category__parent").hover(
    function () {
      var id = $(this).attr('id');
      var child = $("#"+ id).find('.category__child');
      $(child).show(); 
    },
    function () {
      $(".category__child").hide(); 
    }
  );

  $(".category__child").hover(
    function () {
      var id = $(this).attr('id');
      var grandchild = $("#"+ id).find(".category__grandchild");
      $(grandchild).show(); 
    },
    function () {
      $(".category__grandchild").hide();
    }
  );

  $(".left-box--first a").hover(
    function () {
      $(this).css("color","#ffb340")
    },
    function () {
      $(this).css("color","#333")
    }
  );

  $('categories_list--btn').on('click', function(){ 
    window.location.href = $(this).attr('href');
    window.location.reload();
  });
  
});