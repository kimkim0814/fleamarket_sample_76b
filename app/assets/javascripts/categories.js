
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

  // $(".category__parent").hover(
  //   function () {
  //     $(".category__child").show(); 
  //     // $(this).append($(".category__child"));
  //   },
  //   function () {
  //     $(".category__child").hide();
  //   }
  // );

  $(".category__parent").hover(
    function () {
      var idname = $(this).attr('id');
      // console.log(idname);
      
      var child = $("#"+ idname).find('.category__child');
     
      $(child).show(); 
    },
    function () {
      $(".category__child").hide(); 
    }
  );

  $(".category__child").hover(
    function () {
      var parent_id = $(this).parents('.category__parent').attr('id');
      var child_id = $(this).attr('id');
      // console.log(parent_id);
      // console.log(child_id);
      // var child = $("#"+ parent_id).find('.category__child')
      var grandchild = $("#"+ child_id).find(".category__grandchild");
      console.log(grandchild.length)
      // console.log('.grandchild--'+parent_id+'/'+child_id)
      // $('.grandchild--'+parent_id+'/'+child_id).show(); 
      $(grandchild).show(); 
    },
    function () {
      $(".category__grandchild").hide();
    }
  );
 
});