// mysqlを起動すること
// mysql.server start
// <Leader> se で実行

let g:dbext_default_profile_xxx = 'type=mysql:user=vim:passwd=vim012:dbname=xxxxxx:extra=-vvv'
DBSetOption profile=xxx

// 接続確認
SHOW databases;
SHOW tables;

// テーブル作成 /*{{{*/
CREATE TABLE IF NOT EXISTS `users` (
    `id` INTEGER(3) NOT NULL AUTO_INCREMENT,
    `group_id` INTEGER(1) NOT NULL,
    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(8) NOT NULL,
    PRIMARY KEY (`id`)
);
/*}}}*/

// テーブルを空 /*{{{*/
TRUNCATE `users`;
/*}}}*/

// テーブル削除 /*{{{*/
DROP TABLE `users`;
/*}}}*/

// テーブル複製/*{{{*/
CREATE TABLE `users_tmp` LIKE `users`;
INSERT INTO `users_tmp` SELECT * FROM `users`;
/*}}}*/

// レコード追加  /*{{{*/
INSERT INTO users (
  id,
  name,
  password,
  role
) VALUES 
(99,'free','free012','admin');
/*}}}*/

// レコード更新/*{{{*/
// idを99から88
UPDATE `users` SET `id` = 88 WHERE `id` = 99;
/*}}}*/

// レコード削除 /*{{{*/
DELETE FROM `users` WHERE `id` = 1;
/*}}}*/

// 重複レコード削除 /*{{{*/
// テーブルをコピーした上で…削除したSELECTを挿入
CREATE TABLE `users_tmp` LIKE `users`;
INSERT INTO `users_tmp` SELECT * FROM `users` GROUP BY `id`,`role` ORDER BY `id`;
/*}}}*/

// フィールド追加 /*{{{*/
ALTER TABLE `users` ADD `shop_id` INT(2) NOT NULL DEFAULT 0 AFTER `id`;
/*}}}*/

// フィールド名変更 /*{{{*/
ALTER TABLE `users` CHANGE `shop_id` `member_id` int(2);
/*}}}*/

// フィールド複製 /*{{{*/
UPDATE `users` SET `shop_id` = `terminal_id`;
/*}}}*/

// フィールドのタイプを変更 /*{{{*/
ALTER TABLE `users`
  CHANGE COLUMN `member_id` `member_id` TINYINT(1) NOT NULL DEFAULT 0;
/*}}}*/

// フィールド削除 /*{{{*/
ALTER TABLE `users` DROP `shop_id`;
/*}}}*/

// PRIMARY KEY を設定 /*{{{*/
ALTER TABLE `users` ADD PRIMARY KEY (`id`);
/*}}}*/

// ユニーク auto_incrementを設定 /*{{{*/
ALTER TABLE `users` CHANGE `id` `id` INT(2) AUTO_INCREMENT;
/*}}}*/

// VIEW サンプル/*{{{*/
DROP VIEW IF EXISTS `convert_users`;
CREATE VIEW
  `convert_users` AS
SELECT
  `id`,
  `role`
FROM
  `users`
;
/*}}}*/

// PROCEDURE サンプル/*{{{*/
DROP PROCEDURE IF EXISTS `find_user`;
DELIMITER //
CREATE PROCEDURE find_user(
  IN roles VARCHAR(8),
)
BEGIN
  SELECT
    `id`,
    `role`
  FROM
    `users`
  WHERE
    (`users`.`id` BETWEEN 1 AND 10)
    AND
    CASE
      WHEN roles = 'admin'
        THEN `created` > DATE('2014-06-06')
      WHEN roles = 'editor'
        THEN `created` < DATE('2014-06-06')
    ELSE FALSE END
END;

call find_user(1);
///*}}}*/

// 変数を設定 サンプル/*{{{*/
SET @p=UNIX_TIMESTAMP('2014-04-08');
SELECT @p
/*}}}*/
