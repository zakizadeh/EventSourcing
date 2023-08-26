create Table [dbo].[EventStore](
[Id] [uniqueidentifier] NOT NULL,
[CreatedAt] [datetime2] NOT NULL,
[Sequence] [int] Identity(1,1) NOT NULL,
[Version] [int]NOT NULL,
[Name] [nvarchar] (250) NOT NULL,
[AggregateId] [nvarchar] (250) NOT NULL,
[Data] [nvarchar] (MAX) NOT NULL,
[Aggregate] [nvarchar] (250) NOT NULL,

) on [Primary] textimage_on [Primary] 
go