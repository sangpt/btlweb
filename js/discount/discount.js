/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function saveDiscount() {
    var data = { 
        'ngayBatDau': document.getElementById('ngayBatDau').value,
        'ngayKetThuc': document.getElementById('ngayKetThuc').value,
        'tyGiaKhuyenMai': document.getElementById('tyGiaKhuyenMai').value,
        'tenChuongTrinh': document.getElementById('tenChuongTrinh').value
    };

    $.ajax({
        type: "POST",
        data: data,
        url: contextPath + 'discount/save',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function () {
            alert('Thao tác thành công.');
        },
        error: function () {
            alert('Đã có lỗi xảy ra.');
        }
    });
}

function showInsertPage(){
    window.location = contextPath + 'discount/showInsertPage';
}

