<div class="app__header__menu">
    <div class="app__menu app__container">
        <div class="app__menu__content">
            <div class="app__menu__level1">
                <?php $categorias = $db->executa("SELECT * FROM categorias"); ?>
                <?php while ($row = $categorias->fetch_array(MYSQLI_ASSOC)) { ?>
                    <a class="" aria-current="false" data-slug="roupas" data-tree="<?php echo utf8_encode($row['descricao']); ?>" href="listagem.php?cat_id=<?php echo $row['id'];?>">
                        <span class="app__menu__title"><?php echo utf8_encode($row['descricao']); ?></span>
                    </a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
