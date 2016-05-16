getPaginaR :: Handler Html
getPaginaR = defaultLayout $ do
        setTitle "Sauípe Express|Estrutura"
        addStylesheet $ StaticR css_bootstrap_css
        addStylesheet $ StaticR css_fontawesomemin_css
        addStylesheet $ StaticR css_main_css
        addStylesheet $ StaticR css_principal_css
        addScriptRemote "https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"
        addScriptRemote "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
        toWidgetHead 
                [hamlet|
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <link rel="icon" href=@{StaticR imagens_icones_iconeCoqueiroFundo_png} type="image/x-icon">
                |]
        toWidget 
                [whamlet|
                    <nav ."navbar navbar-default navbar-static-top menu cor1"> 
                        <div ."container">
                            <div ."navbar-header">
                                <button type="button" ."navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                                    <span ."sr-only">Navegação
                                    <span ."icon-bar">
                                    <span ."icon-bar">
                                    <span ."icon-bar">
                                <a ."navbar-brand" href=@{HomeR}>Sauípe Express
                            <div ."collapse navbar-collapse" #"navbar-ex-collapse">
                                <ul ."nav navbar-nav navbar-right">
                                    <li>
                                        <a href=@{HomeR}>Home
                                    <li>
                                        <a href=@{QuemSomosR}>Quem Somos
                                    <li>
                                        <a href=@{ServicosR}>Serviços
                                    <li>
                                        <a href=@{ContatoR}>Contato
                    <div ."section">
                        <header ."container">
                            <div ."row">
                                <div ."col-md-6">
                                    <img src=@{StaticR imagens_logotipo10anos_png} ."img-responsive logotipo">
                                    <p>Frete e entregas para todo o Brasil.
                                <div ."links">
                                    <p>
                                        <img src=@{StaticR imagens_icones_icone_tel_png} alt="Telefone para contato" title="Telefone para contato Sauípe Express"> Telefone:(13)3223-9211 ou 3224-5876
                                    <p>
                                        <img src=@{StaticR imagens_icones_icone_whatsapp_png} alt="Celular para contato" title="Celular para contato Sauípe Express"> Celular:(13)99747-7862
                                    <p>
                                        <img src=@{StaticR imagens_icones_icone_cel_png} alt="ID nextel" title="ID Nextel Sauípe Express"> Nextel(ID):129*20237
                                    <p>
                                        <a href="https://www.facebook.com/armando.barros.5661?fref=pb&amp;hc_location=profile_browser" title="página do facebook Sauípe Express"><img src=@{StaticR imagens_icones_icone_facebook_png} alt="página do facebook"> Curta nossa página no facebook
                                    <p>
                                        <a href=@{ContatoR}><img src=@{StaticR imagens_icones_icone_email_png} alt="email para contato" title="Email para contato Sauípe Express"> contato@sauipeexpress.com.br
                    <div ."section">
                        <div ."container fundo1">
                            <div ."row">
                                <div ."col-md-12">
                                    -- INSERIR O CONTEUDO AQUI -- 
                    <div ."section">
                        <footer ."container">
                            <div ."vcard row">
                                <div ."col-md-6">
                                    <h2 ."fn">Sauípe Express Transportes Rápidos Ltda.
                                    <h3>Mapa do Site
                                    <a href=@{HomeR}>Home|
                                    <a href=@{QuemSomosR}>Quem Somos|
                                    <a href=@{ServicosR}>Serviços|
                                    <a href=@{ContatoR}>Contato
                                <div ."adr">Endereço:
                                    <br>
                                    <span ."street-addresss">Av. Afonso Pena, 45 - Macuco,
                                    <br>
                                    <span ."locality">Santos-
                                    <span ."region">SP
                                    <br>
                                    <span title="Celular Sauípe Express" ."tel">Celular: (13)99747-7862
                                    <br>
                                    <span ."tel" title="Telefone Sauípe Express">Telefone: (13)3223-9211 ou 3224-5876 <br>Nextel(ID):129*20237
                                    <br>
                                <a href=@{ContatoR} ."email" alt="Email Sauípe Express" title="Link para página de contato"> contato@sauipeexpress.com.br
            |]