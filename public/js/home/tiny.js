tinymce.init({
    selector : '#mytextarea',
    plugins : 'image',
    toolbar : 'image',

    images_upload_url :'/tiny',
    automatic_uploads : false,

    images_upload_handler : function(blobInfo, success, failure) {
      var xhr, formData;

      xhr = new XMLHttpRequest();
      xhr.withCredentials = false;
      xhr.open('POST','/tiny');

      xhr.onload = function() {
        var json;

        if (xhr.status != 200) {
          failure('HTTP Error: ' + xhr.status);
          return;
        }

        json = JSON.parse(xhr.responseText);

        if (!json || typeof json.file_path != 'string') {
          failure('Invalid JSON: ' + xhr.responseText);
          return;
        }

        success(json.file_path);
      };

      formData = new FormData();
      formData.append('file', blobInfo.blob(), blobInfo.filename());

      xhr.send(formData);
    },
  });
