import 'froala-editor';
import 'froala-editor/js/plugins/image.min';
import 'froala-editor/js/plugins/link.min';
import 'froala-editor/js/plugins/lists.min';
import 'froala-editor/js/plugins/table.min';
import 'froala-editor/js/plugins/url.min';
import 'froala-editor/js/plugins/special_characters.min';
import 'froala-editor/js/plugins/colors.min';
import 'froala-editor/js/plugins/emoticons.min';
import 'froala-editor/js/plugins/code_view.min';
import 'froala-editor/js/plugins/file.min';
import 'froala-editor/js/plugins/char_counter.min';

document.addEventListener('turbolinks:load', () => {
  $('#editor').froalaEditor({
    imageUploadURL: '/upload_image',
    imageUploadParams: {
      id: 'editor'
    }
  });
});
