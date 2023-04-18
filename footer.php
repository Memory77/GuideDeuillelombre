    <footer>
        <div id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="contact-left">
                            <div id="contact-info">
                                <h3>Qui suis-je ?</h3><br>
                                <p>Je m'appelle Deborah (Memory IG) et je suis passionée de WoW depuis toujours.<br>
                                    J'espère que ce blog a pu t'être utile. N'hésite pas à me donner ton avis !<br>
                                    A bientôt !</p>
                            </div>

                            <ul class="social-list">
                                <li> <a href="#" class="social-icon icon-white"><i class="fab fa-discord"></i></a></li>
                                <li> <a href="https://github.com/Memory77" class="social-icon icon-white" target="_blank"><i class="fab fa-github"></i></a></li>
                            </ul>
                            <br><br>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="img-right">
                            <img src="img/WoWScrnShot_013122_235055.jpg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="footer-copyrights">
                            <p>Copyright &copy; 2022 All Right Reserved by Memory</p>
                        </div>
                    </div>
                    <div class="col-md-6 hidden-sm hidden-xs">
                        <div id="footer-menu">
                            <?php if(!isset($_GET['id'])) : ?>
                            <ul>
                                <li><a class="smooth-scroll" href="#lore">Lore</a>/</li>
                                <li><a class="smooth-scroll" href="#stats">Comment l'obtenir</a>/</li>
                                <li><a class="smooth-scroll" href="#contact">Contact</a></li>
                            </ul>
                            <?php else : ?>
                            <style>
                                #footer-copyrights p {
                                    float: right;
                                }
                            </style>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="#lore" id="back-to-top" class="btn btn-sm btn-blue btn-back-to-top smooth-scroll hidden-sm hidden-xs" title="lore" role="button"><i class="fa fa-angle-up"></i>
        </a>
    </footer>