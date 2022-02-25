
CREATE TABLE `warga`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nik` VARCHAR(255) NOT NULL,
    `nama` VARCHAR(255) NOT NULL,
    `jenis_kelamin` VARCHAR(255) NOT NULL,
    `agama_id` BIGINT NOT NULL,
    `golongan_darah_id` BIGINT NOT NULL,
    `tempat_lahir` VARCHAR(255) NOT NULL,
    `tanggal_lahir` DATE NOT NULL,
    `warga_negara` BIGINT NOT NULL,
    `pendidikan` BIGINT NOT NULL,
    `pekerjaan` BIGINT NOT NULL,
    `status_keluarga` BIGINT NOT NULL,
    `status_kawin` BIGINT NOT NULL,
    `alamat` TEXT NOT NULL,
    `no_kk` VARCHAR(255) NOT NULL,
    `status_warga` BIGINT NOT NULL
);
ALTER TABLE
    `warga` ADD PRIMARY KEY `warga_id_primary`(`id`);
CREATE TABLE `rumah`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `alamat` VARCHAR(255) NOT NULL,
    `nomor_rumah` BIGINT NOT NULL,
    `kepala_keluarga` BIGINT NOT NULL,
    `telp` VARCHAR(255) NOT NULL,
    `status_penggunaan` BIGINT NOT NULL,
    `status_rumah` BIGINT NOT NULL
);
ALTER TABLE
    `rumah` ADD PRIMARY KEY `rumah_id_primary`(`id`);