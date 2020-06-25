$(function(){

  let fileIndex = 1
  const buildFileField = (num)=> {
    const html = `<div class="js-file_group" data-index="${num}">
                    <input class="js-file" type="file" style="display:none"
                    name="item[item_images_attributes][${num}][image]"
                    id="camera[${num}]">
                  </div>`
    fileIndex += 1
    return html;
  }

  $(document).on('click', '.fa-camera', function(){
    let editId = $(this).data('edit-id');
    $("#item_item_images_attributes_"+editId+"_image").click()
  });

  $(document).on('click', '.js-remove-edit', function(){
    let removeId = $(this).data('edit-id');
    const hiddenEditCheck = $(`input[data-index="${removeId}"].hidden-destroy`);
    if (hiddenEditCheck) hiddenEditCheck.prop('checked', true);
    $(this).parent().remove();
    $(`img[data-index="${removeId}"]`).remove();
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });
})