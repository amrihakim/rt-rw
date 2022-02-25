CREATE TABLE `jadwal_ronda`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `hari` VARCHAR(255) NOT NULL,
    `grup_id` BIGINT NOT NULL
);
ALTER TABLE
    `jadwal_ronda` ADD PRIMARY KEY `jadwal_ronda_id_primary`(`id`);
CREATE TABLE `grup_ronda`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `warga_id` BIGINT NOT NULL,
    `status` INT NOT NULL,
    `jabatan` INT NOT NULL
);
ALTER TABLE
    `grup_ronda` ADD PRIMARY KEY `grup_ronda_id_primary`(`id`);
CREATE TABLE `jabatan_ronda`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `jabatan_ronda` ADD PRIMARY KEY `jabatan_ronda_id_primary`(`id`);
CREATE TABLE `surat`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `warga_id` BIGINT NOT NULL,
    `jenis_surat` BIGINT NOT NULL,
    `status_surat` BIGINT NOT NULL,
    `keperluan` TEXT NOT NULL
);
ALTER TABLE
    `surat` ADD PRIMARY KEY `surat_id_primary`(`id`);
CREATE TABLE `jenis_surat`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(255) NOT NULL,
    `status` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `jenis_surat` ADD PRIMARY KEY `jenis_surat_id_primary`(`id`);
CREATE TABLE `status_surat`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nama` INT NOT NULL
);
ALTER TABLE
    `status_surat` ADD PRIMARY KEY `status_surat_id_primary`(`id`);
ALTER TABLE
    `jadwal_ronda` ADD CONSTRAINT `jadwal_ronda_grup_id_foreign` FOREIGN KEY(`grup_id`) REFERENCES `grup_ronda`(`id`);
ALTER TABLE
    `grup_ronda` ADD CONSTRAINT `grup_ronda_jabatan_foreign` FOREIGN KEY(`jabatan`) REFERENCES `jabatan_ronda`(`id`);
ALTER TABLE
    `surat` ADD CONSTRAINT `surat_status_surat_foreign` FOREIGN KEY(`status_surat`) REFERENCES `status_surat`(`id`);
ALTER TABLE
    `surat` ADD CONSTRAINT `surat_jenis_surat_foreign` FOREIGN KEY(`jenis_surat`) REFERENCES `jenis_surat`(`id`);