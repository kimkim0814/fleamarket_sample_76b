$(function(){

  // プレビュー用のボックスを生成するための関数
  const buildImg = (index, url)=> {
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
  const buildFileField = (num)=> {
    const html = `<div data-index="${num}" class="products_new-js-file_group">
                    <input class="products_new-js-file" type="file"
                    name="product[product_images_attributes][${num}][image]"
                    id="product_images_attributes_${num}_image"
                    >
                  </div>`;
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  // 既に使われているindexを除外
  lastIndex = $('.products_new-js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);
  

  $('.products_edit-hidden-destroy').hide();

  $('.product-body__main__form__image__boxes__form').on('change', '.products_new-js-file', function(e) {
    const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    $('.product-body__main__form__image__boxes__form').append(buildImg(targetIndex, blobUrl));
    // fileIndexの先頭の数字を使ってinputを作る
    $('.product-body__main__form__image__boxes__form').prepend(buildFileField(fileIndex[0]));
    $(this).css({'display':'none'});
    fileIndex.shift();
    // 末尾の数に1足した数を追加する
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
  });



  num = $('.products_new-js-file_group').data('index')
  if (num == 3){
    $('.camera-icon').css('display', 'none')
  }


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
    const priceInput = '.input-price';
    const feeFeild = '.product-body__main__form__fee__box2';
    const profitFeild = '.product-body__main__form__profit__box2';

    // 価格入力時に手数料、利益計算
  $(priceInput).on('keyup', function(){
    let input = $(this).val();
    if (input >= 300 && input <= 9999999){
      let fee = Math.floor(input * 0.1);
      let profit = "¥" + (input - fee).toLocaleString();
      $(feeFeild).html("¥" + fee.toLocaleString());
      $(profitFeild).html(profit);
    } else {
      let fee = '-';
      let profit = '-';
      $(feeFeild).html(fee);
      $(profitFeild).html(profit);
    }
  });

});
