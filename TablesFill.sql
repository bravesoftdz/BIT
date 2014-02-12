use [TradeDB]
Delete from PaymentTypes;
Insert into PaymentTypes (PaymentName) values('нал');
Insert into PaymentTypes (PaymentName) values('без');
Delete from Units;
Insert into Units (UnitName) values('тн');
Insert into Units (UnitName) values('м3');
Insert into Units (UnitName) values('ч');
Insert into Units (UnitName) values('рейс');
Delete from UserTypes;
Insert into UserTypes (UserTypeName) values('Администратор');
Insert into UserTypes (UserTypeName) values('Менеджер');
Insert into UserTypes (UserTypeName) values('Снабженец');
Insert into Organizations (OrgName) values ('Самовывоз');
Insert into Users (Login,Password,UserFIO,UserType) values ('admin','admin','admin',1);