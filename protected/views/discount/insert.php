<form action='/TriThuc/index.php?r=discount/insert' method="post">
    <table class="contentTable w320">
        <tr>
            <td class='w150'>
                <label>Tên chương trình</label>
            </td>
            <td>
                <input id="tenChuongTrinh" name="tenChuongTrinh"></input>
            </td>
        </tr>
        <tr>
            <td class='w150'>
                <label>Ngày bắt đầu</label>
            </td>
            <td>
                <input id="ngayBatDau" name="ngayBatDau"></input>
            </td>
        </tr>
        <tr>
            <td class='w150'>
                <label>Ngày kết thúc</label>
            </td>
            <td>
                <input id="ngayKetThuc" name="ngayKetThuc"></input>
            </td>
        </tr>
        <tr>
            <td class='w150'>
                <label>Tỷ  giá khuyến mại</label>
            </td>
            <td>
                <input id="tyGiaKhuyenMai" name="tyGiaKhuyenMai"></input>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Lưu" onclick="//saveDiscount();"/>
            </td>
        </tr>
    </table>
</form>
