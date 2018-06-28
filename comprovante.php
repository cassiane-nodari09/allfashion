<?php include("cabecalho.php");?>
<?php include("header.php");?>
<?php include("checkout.php");?>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> -->
  <link rel="stylesheet" href="css/pdf.css">
  <head>
 
  <title>Allfashion</title>
  </head>

  <body>
  <div style="font-size: 12px; font-family: Arial, serif, EmojiFont; margin: 0px;">
    <div class="x_container" style="width:586px; margin:0 auto">
      <table cellpadding="0" cellspacing="0" class="x_one x_col" width="100%" bgcolor="#FFFFFF" style="background:#FFFFFF">
        <tbody>
          <tr>
            <td>
              <table cellpadding="0" cellspacing="0" width="85%" bgcolor="#FFF" style="background:#FFF; color:#000; font-family:'Oswald','Roboto',sans-serif; font-size:16px">
                <tbody>
                  <tr>
                    <td>
                      <span style="font-size:26px; text-transform:uppercase; color:#000;"><strong>Pedido de Compra</strong></span><br>
                      <span style="font-size:40px; text-transform:uppercase"><?php echo $_SESSION['usuario']['nome']; ?></span> 
                      <p style="font-family:Roboto-Regular,Verdana,Arial,sans-serif; font-size:0.85rem">
                      O seu pagamento no total de <?php echo $_SESSION['usuario']['nome']; ?> já&nbsp;foi&nbsp;recebido!</p>
                      <p style="font-family:Roboto-Regular,Verdana,Arial,sans-serif; font-size:0.85rem">
                        Nós do Tri Bagual estamos agradecidos por ter nos escolhidos!
                      </p>
                    </td>
                  </tr>
                </tbody>
              </table>
              <table cellpadding="0" cellspacing="0" class="x_gap" width="100%" style="border-bottom:1px solid #000">
                <tbody>
                  <tr>
                    <td height="30" style="font-family:sans-serif; font-size:1px; line-height:1px"><span>&nbsp;</span></td>
                  </tr>
                </tbody>
              </table>
              <table cellpadding="0" cellspacing="0" width="85%" bgcolor="#FFF" style="background:#FFF; color:#000; font-family:'Oswald','Roboto',sans-serif; font-size:16px">
                <tbody>
                  <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" class="x_gap" width="100%">
                          <tbody>
                            <tr>
                              <td height="15" style="font-family:sans-serif; font-size:1px; line-height:1px"><span>&nbsp;</span></td>
                            </tr>
                          </tbody>
                        </table>
                      <a target="_blank" rel="noopener noreferrer" style="text-decoration:none; color:#000">
                        <p style="font-family:Roboto-Regular,Verdana,Arial,sans-serif; font-size:0.80rem; letter-spacing:-0.02rem">
                        <strong>Obrigado pela preferência!</strong></p>
                      </a>
                      <table cellpadding="0" cellspacing="0" class="x_gap" width="100%">
                        <tbody>
                          <tr>
                            <td height="18" style="font-family:sans-serif; font-size:1px; line-height:1px"><span>&nbsp;</span></td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>