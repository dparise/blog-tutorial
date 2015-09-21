CREATE DATABASE blog;
USE blog;

CREATE TABLE `Article` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `category` VARCHAR(100) NOT NULL,
    `title` VARCHAR(500) NOT NULL,
    `content` TEXT NOT NULL,
    `ts` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Comment` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `username` VARCHAR(100) NULL,
    `content` TEXT NOT NULL,
    `ts` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `articleid` INT NOT NULL,
    FOREIGN KEY (`articleid`) REFERENCES Article(`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
);