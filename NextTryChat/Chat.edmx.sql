
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/18/2017 11:35:27
-- Generated from EDMX file: c:\users\roy\documents\visual studio 2015\Projects\NextTryChat\NextTryChat\Chat.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ChatDBTest];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ChatSet'
CREATE TABLE [dbo].[ChatSet] (
    [ChatID] int IDENTITY(1,1) NOT NULL,
    [ChatType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MessageSet'
CREATE TABLE [dbo].[MessageSet] (
    [MessageID] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [TimeStamp] datetime  NOT NULL,
    [PlayerID] int  NOT NULL,
    [Chat_ChatID] int  NOT NULL
);
GO

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserChat'
CREATE TABLE [dbo].[UserChat] (
    [User_UserID] int  NOT NULL,
    [Chat_ChatID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ChatID] in table 'ChatSet'
ALTER TABLE [dbo].[ChatSet]
ADD CONSTRAINT [PK_ChatSet]
    PRIMARY KEY CLUSTERED ([ChatID] ASC);
GO

-- Creating primary key on [MessageID] in table 'MessageSet'
ALTER TABLE [dbo].[MessageSet]
ADD CONSTRAINT [PK_MessageSet]
    PRIMARY KEY CLUSTERED ([MessageID] ASC);
GO

-- Creating primary key on [UserID] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [User_UserID], [Chat_ChatID] in table 'UserChat'
ALTER TABLE [dbo].[UserChat]
ADD CONSTRAINT [PK_UserChat]
    PRIMARY KEY CLUSTERED ([User_UserID], [Chat_ChatID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Chat_ChatID] in table 'MessageSet'
ALTER TABLE [dbo].[MessageSet]
ADD CONSTRAINT [FK_ChatMessage]
    FOREIGN KEY ([Chat_ChatID])
    REFERENCES [dbo].[ChatSet]
        ([ChatID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ChatMessage'
CREATE INDEX [IX_FK_ChatMessage]
ON [dbo].[MessageSet]
    ([Chat_ChatID]);
GO

-- Creating foreign key on [User_UserID] in table 'UserChat'
ALTER TABLE [dbo].[UserChat]
ADD CONSTRAINT [FK_UserChat_User]
    FOREIGN KEY ([User_UserID])
    REFERENCES [dbo].[UserSet]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Chat_ChatID] in table 'UserChat'
ALTER TABLE [dbo].[UserChat]
ADD CONSTRAINT [FK_UserChat_Chat]
    FOREIGN KEY ([Chat_ChatID])
    REFERENCES [dbo].[ChatSet]
        ([ChatID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserChat_Chat'
CREATE INDEX [IX_FK_UserChat_Chat]
ON [dbo].[UserChat]
    ([Chat_ChatID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------