unit GUIListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsdxBarPainter, ImgList,
  dxBar, cxCheckBox, DataModule, cxTextEdit, dxSkinDarkRoom, ADODB, dxSkinBlack,
  cxBlobEdit, cxButtonEdit, GUIPrivilegeForm;

type
  TListForm = class(TForm)
    OrgView: TcxGridDBTableView;
    OrgLevel: TcxGridLevel;
    ListGrid: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    AddButton: TdxBarButton;
    ChangeButton: TdxBarButton;
    DeleteButton: TdxBarButton;
    dxBarButton4: TdxBarButton;
    UpdateButton: TdxBarButton;
    OrgViewID: TcxGridDBColumn;
    OrgViewOrgName: TcxGridDBColumn;
    OrgViewColumn1: TcxGridDBColumn;
    TransporterLevel: TcxGridLevel;
    UsersLevel: TcxGridLevel;
    TransporterView: TcxGridDBTableView;
    TransporterViewID: TcxGridDBColumn;
    TransporterViewTransporterName: TcxGridDBColumn;
    TransporterViewCost: TcxGridDBColumn;
    UsersView: TcxGridDBTableView;
    UsersViewID: TcxGridDBColumn;
    UsersViewLogin: TcxGridDBColumn;
    UsersViewPassword: TcxGridDBColumn;
    UsersViewUserType: TcxGridDBColumn;
    UsersViewManagerPercent: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    PlacesLevel: TcxGridLevel;
    PlacesView: TcxGridDBTableView;
    PlacesViewID: TcxGridDBColumn;
    PlacesViewPlaceName: TcxGridDBColumn;
    MatGroupsLevel: TcxGridLevel;
    MaterialsLevel: TcxGridLevel;
    MatGroupsView: TcxGridDBTableView;
    MaterialsView: TcxGridDBTableView;
    MatGroupsViewID: TcxGridDBColumn;
    MatGroupsViewMaterialGroupName: TcxGridDBColumn;
    MaterialsViewID: TcxGridDBColumn;
    MaterialsViewMaterialName: TcxGridDBColumn;
    MaterialsViewMaterialGroup: TcxGridDBColumn;
    MaterialsViewCost: TcxGridDBColumn;
    UsersViewUserFIO: TcxGridDBColumn;
    VMaterialsLevel: TcxGridLevel;
    VMaterialsView: TcxGridDBTableView;
    VMaterialsViewID: TcxGridDBColumn;
    VMaterialsViewVMaterialName: TcxGridDBColumn;
    VMaterialsViewVMaterialCost: TcxGridDBColumn;
    UserTypesLevel: TcxGridLevel;
    UserTypesView: TcxGridDBTableView;
    UserTypesViewID: TcxGridDBColumn;
    UserTypesViewUserTypeName: TcxGridDBColumn;
    UserTypesViewUserPrivileges: TcxGridDBColumn;
    OrgViewColumn2: TcxGridDBColumn;
    procedure AddButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure ChangeButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure OrgViewOrgNamePropertiesChange(Sender: TObject);
    procedure UserTypesViewUserPrivilegesPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure UserTypesViewUserTypeNamePropertiesChange(Sender: TObject);
  private
    InputIndex:integer;
    procedure CheckOrg(OrgID: integer);
    procedure CheckMaterial(MatID: integer);
    procedure CheckUser(UserID: integer);
    procedure CheckMatgroup(MatGroupID: integer);
    procedure CheckTransporter(TranspID: integer);
    procedure CheckPlace(PlaceID: integer);
    procedure CheckVMaterials(MatID: integer);
    procedure CheckUserTypes(UserTypeID: integer);
  public
    function ShowOrganization(id:integer):integer;
    function ShowUsers(id:integer):integer;
    function ShowTransporters(id:integer):integer;
    function ShowPlaces(id:integer):integer;
    function ShowMatGroups(id:integer):integer;
    function ShowMaterials(GroupID,id:integer):integer;
    function ShowVMaterials(id:integer):integer;
    function ShowUserTypes(id:integer):integer;
  end;

var
  ListForm: TListForm;

implementation

{$R *.dfm}

{ TListForm }

procedure TListForm.AddButtonClick(Sender: TObject);
begin
   if ListGrid.ActiveLevel=MaterialsLevel then
   begin
     if InputIndex>0 then
      begin
        TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Insert;
        MaterialsViewMaterialGroup.EditValue:=InputIndex;
        MaterialsView.DataController.PostEditingData;
        OKButton.Enabled:=True;
      end
      else
      MainDM.MessageForm.ShowNotify('Перед добавлением материалов/услуг в справочник необходимо'+
                                   ' создать хотя бы одну группу материалов');
   end
   else
   begin
     TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Insert;
     OKButton.Enabled:=True;
   end;
end;

procedure TListForm.ChangeButtonClick(Sender: TObject);
begin
  // дублировать?
 // TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Insert;
 // for i := 0 to  - 1 do

end;

procedure TListForm.CheckOrg(OrgID: integer);
var QR:TADOQuery;
begin
  if OrgID=1 then
    MainDM.MessageForm.ShowError('Невозможно удалить запись "Самовывоз"')
  else
  begin
    QR:=TADOQuery.Create(self);
    try
      QR.Connection:=MainDM.DBConnect;
      QR.SQL.Text:='Select * from MainTransactions where OrganizationID='+inttostr(OrgID);
      QR.Open;
      if QR.RecordCount>0 then
       MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
           ' на данную организацию. Перед удалением организации из справочника необходимо'+
           ' удалить все относящиеся к ней записи')
      else
        TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
    finally
      QR.Free;
    end;
  end;
end;

procedure TListForm.CheckMaterial(MatID: integer);
var QR:TADOQuery;
begin
    QR:=TADOQuery.Create(self);
    try
      QR.Connection:=MainDM.DBConnect;
      QR.SQL.Text:='Select * from MainTransactions where MaterialID='+inttostr(MatID);
      QR.Open;
      if QR.RecordCount>0 then
       MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
           ' на данный материал/услугу. Перед удалением из справочника необходимо'+
           ' удалить все относящиеся к нему записи')
      else
        TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
    finally
      QR.Free;
    end;
end;

procedure TListForm.CheckUser(UserID: integer);
var QR:TADOQuery;
begin
  QR:=TADOQuery.Create(self);
  try
    QR.Connection:=MainDM.DBConnect;
    QR.SQL.Text:='Select * from MainTransactions where ManagerID='+inttostr(UserID);
    QR.Open;
    if QR.RecordCount>0 then
     MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
         ' на данного пользователя. Перед удалением пользователя из справочника необходимо'+
         ' удалить все относящиеся к нему записи')
    else
      TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  finally
    QR.Free;
  end;
end;

procedure TListForm.CheckUserTypes(UserTypeID: integer);
var QR:TADOQuery;
begin
  QR:=TADOQuery.Create(self);
  try
    QR.Connection:=MainDM.DBConnect;
    QR.SQL.Text:='Select * from Users where UserType='+inttostr(UserTypeID);
    QR.Open;
    if AnsiUpperCase(MainDM.UsertypesQR.FieldByName('UserTypeName').AsString) = 'АДМИНИСТРАТОР' then
      MainDM.MessageForm.ShowError('Нельзя удалить встроенную запись администратора')
    else
    if QR.RecordCount>0 then
     MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
         ' на данный тип пользователя. Перед удалением типа из справочника необходимо'+
         ' удалить все относящиеся к нему записи')
    else
      TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  finally
    QR.Free;
  end;
end;

procedure TListForm.CheckVMaterials(MatID: integer);
var QR:TADOQuery;
begin
  QR:=TADOQuery.Create(self);
  try
    QR.Connection:=MainDM.DBConnect;
    QR.SQL.Text:='Select * from VinnikTransactions where VMaterial='+inttostr(MatID);
    QR.Open;
    if QR.RecordCount>0 then
     MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
         ' на данный материал. Перед удалением материала из справочника необходимо'+
         ' удалить все относящиеся к нему записи')
    else
      TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  finally
    QR.Free;
  end;
end;

procedure TListForm.CheckMatgroup(MatGroupID: integer);  /// спросить, удалить всё равно,
//если нет то проверить в главной таблице, есть ли материалы с таким груп ИД
var QR:TADOQuery;
begin
  QR:=TADOQuery.Create(self);
  try
    QR.Connection:=MainDM.DBConnect;
    QR.SQL.Text:='Select * from Materials where MaterialGroup='+inttostr(MatGroupID);
    QR.Open;
    if QR.RecordCount>0 then
     MainDM.MessageForm.ShowError('В данной группе содержатся материалы/услуги ('+inttostr(QR.RecordCount)+')'+
         ' . Перед удалением группы из справочника необходимо'+
         ' удалить все относящиеся к нему записи')
    else
      TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  finally
    QR.Free;
  end;
end;

procedure TListForm.CheckTransporter(TranspID: integer);
var QR:TADOQuery;
begin
  QR:=TADOQuery.Create(self);
  try
    QR.Connection:=MainDM.DBConnect;
    QR.SQL.Text:='Select * from MainTransactions where TransporterID='+inttostr(TranspID);
    QR.Open;
    if QR.RecordCount>0 then
     MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
         ' на данного перевозчика. Перед удалением из справочника необходимо'+
         ' удалить все относящиеся к нему записи')
    else
      TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  finally
    QR.Free;
  end;
end;

procedure TListForm.CheckPlace(PlaceID: integer);
var QR:TADOQuery;
begin
  QR:=TADOQuery.Create(self);
  try
    QR.Connection:=MainDM.DBConnect;
    QR.SQL.Text:='Select * from MainTransactions where BuyingPlaceID='+inttostr(PlaceID);
    QR.Open;
    if QR.RecordCount>0 then
     MainDM.MessageForm.ShowError('В базе данных есть ссылки ('+inttostr(QR.RecordCount)+')'+
         ' на данное место закупки. Перед удалением из справочника необходимо'+
         ' удалить все относящиеся к нему записи')
    else
      TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  finally
    QR.Free;
  end;
end;

procedure TListForm.UpdateButtonClick(Sender: TObject);
begin
  ListGrid.ActiveLevel.GridView.DataController.Refresh;
 // MainDM.CloseConnections;
 // MainDM.OpenConnections;
end;

procedure TListForm.UserTypesViewUserPrivilegesPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var PrForm:TPrivilegeForm;
    TempPath:string;
    StrStream:TStringStream;
    TempStr:string;
begin
  TempStr:=AnsiUpperCase(MainDM.UsertypesQR.FieldByName('UserTypeName').AsString);
  if TempStr = 'АДМИНИСТРАТОР' then
     MainDM.MessageForm.ShowError('Нельзя редактировать встроенную запись администратора ')
  else
  begin
    TempPath:=ExtractFilePath(Application.ExeName)+'Temp.ini';
    StrStream:=TStringStream.Create(MainDM.UsertypesQR.FieldByName('UserPrivileges').AsString);
    try
      StrStream.SaveToFile(TempPath);
      PrForm:=TPrivilegeForm.Create(nil);
      try
        PrForm.ShowPrivileges(TempPath);
        StrStream.LoadFromFile(TempPath);
        MainDM.UsertypesQR.Edit;
        MainDM.UsertypesQR.FieldByName('UserPrivileges').AsString:=StrStream.DataString;
        MainDM.UsertypesQR.Post;
        DeleteFile(TempPath);
      finally
        PrForm.Free;
      end;
   finally
      StrStream.Free;
    end;
  end;
end;

procedure TListForm.UserTypesViewUserTypeNamePropertiesChange(Sender: TObject);
begin
   if AnsiUpperCase(TcxTextEdit(Sender).EditValue)='АДМИНИСТРАТОР' then
      TcxTextEdit(Sender).Reset
end;

procedure TListForm.OKButtonClick(Sender: TObject);
begin
  try
    TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Post(True);
    ModalResult:=mrOK;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка обновления '+e.message);
  end;
end;

procedure TListForm.OrgViewOrgNamePropertiesChange(Sender: TObject);
begin
   // самовывоз удалять нельзя
   if TcxTextEdit(Sender).EditValue='самовывоз' then
      TcxTextEdit(Sender).Reset
end;

procedure TListForm.DeleteButtonClick(Sender: TObject);
var RecordID:integer;
begin
  try
    if ListGrid.ActiveView.DataController.FocusedRecordIndex>-1 then
    if ListGrid.ActiveView.DataController.Values[ListGrid.ActiveView.DataController.FocusedRecordIndex,0]>0 then
    begin
    if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
      begin
         RecordID:=TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Values[
           TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.FocusedRecordIndex,0];
          // при удалении проверить, есть ли уже ссылки на эту запись
         if ListGrid.ActiveLevel=OrgLevel then
           CheckOrg(RecordID)
         else
         if ListGrid.ActiveLevel=MaterialsLevel then
           begin
             if not MaterialsView.Controller.FocusedRow.Expandable then
               CheckMaterial(RecordID)
           end
         else
         if ListGrid.ActiveLevel=UsersLevel then
           CheckUser(RecordID)
         else
         if ListGrid.ActiveLevel=TransporterLevel then
           CheckTransporter(RecordID)
         else
         if ListGrid.ActiveLevel=PlacesLevel then
           CheckPlace(RecordID)
         else
         if ListGrid.ActiveLevel=MatGroupsLevel then
           CheckMatgroup(RecordID)
         else
         if ListGrid.ActiveLevel=VMaterialsLevel then
           CheckVMaterials(RecordID)
         else
         if ListGrid.ActiveLevel=UserTypesLevel then
           CheckUserTypes(RecordID);
         if ListGrid.ActiveView.DataController.RecordCount=0 then
            OKButton.Enabled:=False;
      end;
    end
    else
     TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  except
        on e:exception do
        MainDM.MessageForm.ShowError('Невозможно удалить запись. Ошибка: '+e.Message);
  end;
end;

procedure TListForm.dxBarButton1Click(Sender: TObject);
begin
  try
    TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

function TListForm.ShowMaterials(GroupID,id: integer): integer;
var i:integer;
    focused:boolean;
begin
   Result:=0;
   try
     InputIndex:=GroupID;
     MainDM.MaterialsQuery.Close;
     MainDM.MaterialsQuery.Open;
     if MainDM.MaterialsQuery.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Материалы';
     MainDM.MatGroupsQR.Close;
     MainDM.MatGroupsQR.Open;
     ListGrid.ActiveLevel:=MaterialsLevel;
     if GroupID>0 then
     begin
       MaterialsView.DataController.Filter.Root.Clear;
       MaterialsView.DataController.Filter.Root.AddItem(MaterialsViewMaterialGroup,
                foEqual,GroupID,'');
       MaterialsView.DataController.Filter.Active:=True;
     end;
     i:=0;
     focused:=false;
     while (i<MaterialsView.DataController.RecordCount) and not focused do
       begin
       if MaterialsView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           MaterialsView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
         if MaterialsView.DataController.FocusedRecordIndex>-1 then
           Result:=MaterialsView.DataController.Values[MaterialsView.DataController.FocusedRecordIndex,0]
   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowMatGroups(id: integer): integer;
var i:integer;
    focused:boolean;
begin
   Result:=0;
   try
     InputIndex:=id;
     MainDM.MatGroupsQR.Close;
     MainDM.MatGroupsQR.Open;
     if MainDM.MatGroupsQR.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Группы материалов';
     ListGrid.ActiveLevel:=MatGroupsLevel;
     i:=0;
     focused:=false;
     while (i<MatGroupsView.DataController.RecordCount) and not focused do
       begin
       if MatGroupsView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           MatGroupsView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        if MatGroupsView.DataController.RecordCount>0 then
           Result:=MatGroupsView.DataController.Values[MatGroupsView.DataController.FocusedRecordIndex,0]
   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowOrganization(id: integer): integer;
var i:integer;
    focused:boolean;
begin
   Result:=0;
   try
     InputIndex:=id;
     MainDM.OrganizationsQuery.Close;
     MainDM.OrganizationsQuery.Open;
     if MainDM.OrganizationsQuery.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Организации';
     // проверка прав на редактирование
     OrgView.OptionsData.Editing:=MainDM.CurrentUser.CanEditOrg;
     OrgView.OptionsData.Deleting:=MainDM.CurrentUser.CanEditOrg;
     OrgView.OptionsData.Inserting:=MainDM.CurrentUser.CanEditOrg;
     AddButton.Enabled:=MainDM.CurrentUser.CanEditOrg;
     ChangeButton.Enabled:=MainDM.CurrentUser.CanEditOrg;
     //

     ListGrid.ActiveLevel:=OrgLevel;
     i:=0;
     focused:=false;
     while (i<OrgView.DataController.RecordCount) and not focused do
       begin
       if OrgView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           OrgView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        Result:=OrgView.DataController.Values[OrgView.DataController.FocusedRecordIndex,0];

   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowPlaces(id: integer): integer;
var i:integer;
    focused:boolean;
begin
   Result:=0;
   try
     InputIndex:=id;
     MainDM.PlacesQuery.Close;
     MainDM.PlacesQuery.Open;
     if MainDM.PlacesQuery.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Места закупки';
     ListGrid.ActiveLevel:=PlacesLevel;
     i:=0;
     focused:=false;
     while (i<PlacesView.DataController.RecordCount) and not focused do
       begin
       if PlacesView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           PlacesView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        Result:=PlacesView.DataController.Values[PlacesView.DataController.FocusedRecordIndex,0];

   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowTransporters(id: integer): integer;
var i:integer;
    focused:boolean;
begin
   Result:=0;
   try
     InputIndex:=id;
     MainDM.TransportersQuery.Close;
     MainDM.TransportersQuery.Open;
     if MainDM.TransportersQuery.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Перевозчики';
     ListGrid.ActiveLevel:=TransporterLevel;
     i:=0;
     focused:=false;
     while (i<TransporterView.DataController.RecordCount) and not focused do
       begin
       if TransporterView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           TransporterView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        Result:=TransporterView.DataController.Values[TransporterView.DataController.FocusedRecordIndex,0];

   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowUsers(id: integer): integer;
var i:integer;
    focused:boolean;
begin
  Result:=0;
  try
     InputIndex:=id;
     MainDM.UsersQuery.Close;
     MainDM.UsersQuery.Open;
     if MainDM.UsersQuery.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Пользователи';
     ListGrid.ActiveLevel:=UsersLevel;
     i:=0;
     focused:=false;
     while (i<UsersView.DataController.RecordCount) and not focused do
       begin
       if UsersView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           UsersView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        Result:=UsersView.DataController.Values[UsersView.DataController.FocusedRecordIndex,0];
   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowUserTypes(id: integer): integer;
var i:integer;
    focused:boolean;
begin
  Result:=0;
  try
     InputIndex:=id;
     MainDM.UsertypesQR.Close;
     MainDM.UserTypesQR.Open;
     if MainDM.UserTypesQR.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Типы пользователей';
     ListGrid.ActiveLevel:=UserTypesLevel;
     i:=0;
     focused:=false;
     while (i<UserTypesView.DataController.RecordCount) and not focused do
       begin
       if UserTypesView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           UserTypesView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        Result:=UserTypesView.DataController.Values[UserTypesView.DataController.FocusedRecordIndex,0];

   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

function TListForm.ShowVMaterials(id: integer): integer;
var i:integer;
    focused:boolean;
begin
   Result:=0;
   try
     InputIndex:=id;
     MainDM.VMaterialsQR.Close;
     MainDM.VMaterialsQR.Open;
     if MainDM.VMaterialsQR.RecordCount=0 then
        OkButton.Enabled:=False
     else
        OkButton.Enabled:=True;
     self.Caption:='Материалы Винниково';
     ListGrid.ActiveLevel:=VMaterialsLevel;
     i:=0;
     focused:=false;
     while (i<VMaterialsView.DataController.RecordCount) and not focused do
       begin
       if VMaterialsView.DataController.Values[i,0]=id then
         begin
           focused:=true;
           VMaterialsView.DataController.FocusedRecordIndex:=i;
         end;
         inc(i);
       end;
     if showModal=mrOK then
        Result:=VMaterialsView.DataController.Values[VMaterialsView.DataController.FocusedRecordIndex,0];
   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить справочник. Ошибка: '+e.message);
   end;
end;

end.
