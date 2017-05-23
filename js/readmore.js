$('.read-more-content').addClass('hidden')

// Set up a link to expand the hidden content:
.before('<a class="read-more-show" href="#"> Đọc thêm</a>')
  
// Set up a link to hide the expanded content.
.append(' <a class="read-more-hide" href="#"> Rút gọn</a>');

// Set up the toggle effect:
$('.read-more-show').on('click', function(e) {
  $(this).next('.read-more-content').removeClass('hidden');
  $(this).addClass('hidden');
  e.preventDefault();
});

$('.read-more-hide').on('click', function(e) {
  $(this).parent('.read-more-content').addClass('hidden').parent().children('.read-more-show').removeClass('hidden');
  e.preventDefault();
});


