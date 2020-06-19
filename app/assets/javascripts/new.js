$(function(){

  // プレビュー用のボックスを生成するための関数
  function buildImg(index, url){
    const html = `<div data-index="${index}", class="products_new-preview-box">
                    <div class="products_new-upper-box">
                      <img data-index="${index}" src="${url}" width="100px" height="100px">
                      <div class="products_new-js-remove">
                      削除
                    </div>
                  </div>
                </div>`;
    return html;
  }

  // 画像用のinputを生成する関数
  function buildFileField(num) {
    const html = `<div data-index="${num}" class="products_new-js-file_group">
                    <input class="products_new-js-file" type="file"
                    name="item[images_attributes][${num}][image]"
                    id="item_images_attributes_${num}_image"
                    style= "display:none;">
                  </div>`;
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('.products_edit-hidden-destroy').hide();

  $(document).on('change', '.products_new-js-file', function(e) {
    const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    $('.product-body__main__form__image__boxes__form').append(buildImg(targetIndex, blobUrl));
    // fileIndexの先頭の数字を使ってinputを作る
    $('.product-body__main__form__image__js').append(buildFileField(fileIndex[0]));
    // $(this).css({'display':'none'});
    fileIndex.shift();
    // 末尾の数に1足した数を追加する
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
  });

  $('.product-body__main__form__image__boxes__form').on('click', '.products_new-js-remove', function() {
    const targetIndex = $(this).prev().data('index');
    // 該当indexを振られているチェックボックスを取得する
    const hiddenCheck = $(`input[data-index="${targetIndex}"].products_new-hidden-destroy`);
    // もしチェックボックスが存在すればチェックを入れる
    if (hiddenCheck) hiddenCheck.prop('checked', true);
    // 削除ボタンを取得
    $(this).parent().parent().remove();
    $(`div[data-index="${targetIndex}"]`).remove();
    if ($('.products_new-js-file').length == 0) $('.products_new-image-box').append(buildFileField(fileIndex[0]));
  });

  // num = $('.products_new-preview-box').data('index')
  // if (num == 3){
  //   $('.product-body__main__form__image__boxes__form').css('display', 'none')
  // }

  // var dataBox = new DataTransfer();
  // var file_field = document.querySelector('input[type=file]')
  //   $(document).on('change', '.products_new-js-file', function(e) {
  //     var files = $('input[type="file"]').prop('files')[0];
  //     $.each(this.files, function(i, file){
  //       var fileReader = new FileReader();
  //       dataBox.items.add(file)
  //       file_field.files = dataBox.files
  //       fileReader.readAsDataURL(file);
  //     });
  //   });

  $(".product-body__main__form__image__boxes__form").on("click", function(){
    let file_field = $(".products_new-js-file:last");
    file_field.trigger("click");
  })

  $('.product-body__main__form__exhibition').on('click', function(){
    if(
      $('.product-body__main__form__name-area__field').val() === '' ||
      $('#item_description').val() === ''
    ){
      // console.log($('#item_description').val());
      alert('必須項目を入力してください')
      return false;
    }
  })

});
