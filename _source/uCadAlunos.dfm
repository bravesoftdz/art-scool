inherited FrmCadAlunos: TFrmCadAlunos
  Caption = 'Cadastro de Alunos'
  ClientHeight = 451
  ClientWidth = 682
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 698
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited FlatPanel1: TFlatPanel
    Width = 682
    ExplicitWidth = 682
    inherited pnlCabecalho: TPanel
      Width = 680
      ExplicitWidth = 680
      inherited sbpMax: TAdvGlowButton
        Left = 602
        ExplicitLeft = 602
      end
      inherited SpbSair: TAdvGlowButton
        Left = 633
        ExplicitLeft = 633
      end
    end
  end
  inherited TabPages: TRzPageControl
    Width = 682
    Height = 420
    ExplicitWidth = 682
    ExplicitHeight = 420
    FixedDimension = 19
    inherited TbShTela: TRzTabSheet
      ExplicitWidth = 678
      ExplicitHeight = 394
    end
    inherited TbShTabela: TRzTabSheet
      ExplicitWidth = 678
      ExplicitHeight = 394
      inherited TblOcorrencia: TJvDBGrid
        Left = 5
        Width = 669
        Height = 359
      end
      inherited PnlCustomGrid: TPanel
        Top = 370
        Width = 678
        ExplicitTop = 370
        ExplicitWidth = 678
      end
    end
  end
end
