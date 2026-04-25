-- T. Kuis Coding Pertemuan Ke-4
DELIMITER //

CREATE PROCEDURE cek_predikat_mahasiswa(IN p_nilai INT)
BEGIN
    DECLARE v_predikat VARCHAR(50);
    DECLARE v_status VARCHAR(20);

    -- Menentukan Predikat berdasarkan nilai
    IF p_nilai >= 90 AND p_nilai <= 100 THEN
        SET v_predikat = 'Sangat Memuaskan';
    ELSEIF p_nilai >= 80 AND p_nilai <= 89 THEN
        SET v_predikat = 'Memuaskan';
    ELSEIF p_nilai >= 70 AND p_nilai <= 79 THEN
        SET v_predikat = 'Baik';
    ELSEIF p_nilai >= 60 AND p_nilai <= 69 THEN
        SET v_predikat = 'Cukup';
    ELSEIF p_nilai < 60 THEN
        SET v_predikat = 'Kurang';
    END IF;

    -- Menentukan Status Kelulusan
    IF p_nilai >= 70 THEN
        SET v_status = 'Lulus';
    ELSE
        SET v_status = 'Tidak Lulus';
    END IF;

    -- Menampilkan Output dalam bentuk kolom (sesuai standar MySQL)
    SELECT 
        p_nilai AS 'Nilai', 
        v_predikat AS 'Predikat', 
        v_status AS 'Status';
END //

DELIMITER ;
