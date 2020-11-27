
$(document).ready( function () {
    $('#myTable').DataTable();
    $('.alert').alert();

    //KRS MAHASISWA
    addKrs()
    function addKrs(){
        let total
        var countMatkul = $('#pilihanMatkul[type="checkbox"]')
        total = 0
        countMatkul.change(function (){
            if (!countMatkul){
                $('.jumlahMatkul').val(total);
            }else{
                let total = countMatkul.filter(':checked').length;
                $('.jumlahMatkul').val(total);
            }

        })
        $(document).on("click", "input[type='checkbox']", function(){
            total=0;
            $("input[type='checkbox']:checked").each(function(){
                let jmlhSks = this.getAttribute('data-sks')
                total += parseInt(jmlhSks)
                if (total > 24){
                    $("#batasSks").html('<b>Batas SKS Yang boleh di ambil adalah 24</b>')
                }
            })
            $("input[name='total']").val(total)
        })
    }

    $("#modalPage").trigger('click')

    // $('.nav-link').onclick().addClass('active');
    // $('.nav-link').onclick(function (){
    //     this.addClass('active')
    // })


});
