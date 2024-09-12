function ngitung_Keuangan(){
    echo "Masukkan jumlah pengembang:"
    read tukang

    echo "Masukkan gaji per pengembang per bulan (rupiah):"
    read gaji_tukang

    echo "Masukkan lama proyek (dalam bulan):"
    read lama_pengerjaan

    echo "Masukkan biaya server per bulan (rupiah):"
    read biaya_server

    echo "Masukkan biaya lisensi software:"
    read biaya_lisensi

    echo "Masukkan biaya operasional lainnya (rupiah):"
    read biaya_jajan

    echo "Masukkan anggaran awal (rupiah):"
    read anggaran

    totalgaji=$((tukang * gaji_tukang * lama_pengerjaan))
    biaya_server=$((biaya_server * lama_pengerjaan))
    totalbiaya=$((totalgaji + biaya_server + biaya_lisensi + biaya_jajan))
    sisabiaya=$((anggaran - totalbiaya))

    echo "-------------------"
    echo "Total biaya gaji pengembang: Rp $totalgaji"
    echo "Total biaya server: Rp $totalserver"
    echo "Total biaya lisensi software: Rp $biaya_lisensi"
    echo "Total biaya operasional: RP $biaya_jajan"
    echo "-------------------"
    echo "Total biaya keseluruhan proyek: Rp $totalbiaya"
    echo "Sisa anggaran: Rp $sisabiaya"

    if [ $sisabiaya -lt 0 ]; then
    echo "proyek melebihi anggaran sebesar Rp ${sisabiaya#-}"
    else
    echo "proyek dapat diselesaikan dengan anggaran."
    fi

}
ngitung_Keuangan