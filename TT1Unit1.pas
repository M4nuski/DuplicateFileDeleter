unit TT1Unit1;

interface

uses
  System.Classes, jpeg;


type
  FileData = record
    Name : string;
    Size : int64;
    CheckSum : array[0..15] of Byte;
    Snagged : boolean;
  end;

  TT1 = class(TThread)
  private
    data : array of FileData;
    memo : tmemo;
    procedure mla(s:string);
    { Private declarations }
  protected
    procedure Execute; override;
  public
  constructor Create(MemoCB:TMemo; Source :   array of FileData);
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TT1.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ TT1 }

constructor Create(MemoCB:TMemo; Source : array of FileData);
begin
  inherited;
  memo := memoCB;
  data := Source;
end;

procedure mla(s:string);
begin
  memo.lines.add(S);
end;

procedure TT1.Execute;
var jpg : TJPEGImage;
l1, unreadables, found : integer;
begin
  { Place thread code here }

begin

  unreadables := 0;
  found := 0;
  jpg  := tjpegimage.create;

  for l1 := 0 to length(Files)-1 do if uppercase(ExtractFileExt(Files[l1].Name)) = '.JPG' then begin
    inc(found);
    try
      JPG.LoadFromFile(Files[l1].Name);
    except

     Synchronize(mla(Files[l1].Name + ' [Unreadable]'));
      inc(unreadables);
    end;
  end;

  Synchronize(mla(inttostr(unreadables) + ' Unreadable JPEGs out of '+inttostr(found)+' found.'));
  jpg.free;

end;

end.
