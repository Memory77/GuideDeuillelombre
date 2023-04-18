 <header>
        <nav class="navbar navbar-fixed-top">
            <div class="container-fluid">
                <div class="dlombre-nav-wrapper">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#dlombre-menu">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="dlombre-menu">
                        <ul class="nav navbar-nav">
                            <?php if(!isset($_GET['id'])) : ?>
                            <li><a class="smooth-scroll" href="#lore">Lore</a></li>
                            <li><a class="smooth-scroll" href="#dlombre">Comment l'obtenir</a></li>
                            <li><a class="smooth-scroll" href="#contact">Contact</a></li>
                            <?php else : ?>
                            <li><a class="smooth-scroll"><?= $article->title ?></a></li>
                            <?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>