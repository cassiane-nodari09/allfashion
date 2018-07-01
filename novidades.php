<div class="container paineis">
    <div class="app__home__cards">
        <?php $prod = $db->executa("SELECT p.* FROM produtos p LIMIT 12");
        while ($row = $prod->fetch_array(MYSQLI_ASSOC)) { ?>
            <div class="app__home__cards__item">
                <a href="produto.php?id=<?php echo $row['id']; ?>" style="text-decoration: none;">
                    <div class="app__transition__wrapper">
                        <?php
                            $img_principal = $db->executa("SELECT * FROM imagens WHERE principal = 'S' AND Produtos_id = ".$row['id']);
                            $img_principal = $img_principal->fetch_array();
                        ?>
                        <img src="<?php echo $img_principal['caminho'].$img_principal['nome'];?>" alt="<?php echo utf8_encode($row['nome']);?>" style="height: 100%;">
                    </div>
                    <div class="app__home__cards__details">
                        <h3><?php echo utf8_encode($row['nome']);?></h3>
                        <button class="btn btn-outline-primary">VEJA MAIS</button>
                    </div>
                </a>
            </div>
        <?php } ?>
    </div>
</div>
