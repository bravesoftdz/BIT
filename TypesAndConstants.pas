unit TypesAndConstants;

interface

type

   TUserParams=record
     ID:integer;
     Login:string;
     Percent:double;
     UserType:integer;
     OnlyUserRecords:boolean;
     CanBlockRecords:boolean;
     OnlyUserRecordsGrid:boolean;
     RSale:boolean;
     RDSale:boolean;
     RBuy:boolean;
     RBuySnab:boolean;
     RDBuy:boolean;
     RTransp:boolean;
     RDTransp:boolean;
     RMng:boolean;
     RDMng:boolean;
     CanEditOrg:boolean;
   end;

implementation

end.
