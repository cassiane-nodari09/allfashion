<?php /*<section class="menu-departamentos">
    <!-- <h2>Departamentos</h2> -->
    <?php $categorias = $db->executa("SELECT * FROM categorias"); ?>
    <nav>
    <ul>
        <?php while ($row = $categorias->fetch_array(MYSQLI_ASSOC)) { ?>
        <li>
            <a href="listagem.php?cat_id=<?php echo $row['id'];?>&sub_cat_id=-1"><?php echo utf8_encode($row['descricao']); ?></a>
            <?php
            $subcategorias = $db->executa("SELECT * FROM subcategorias WHERE CATEGORIAS_ID = ".$row['id']);
            ?>
            <ul class="sub-menu">
            <?php while ($r = $subcategorias->fetch_array(MYSQLI_ASSOC)) { ?>
                <li><a href="listagem.php?cat_id=<?php echo $row['id'];?>&sub_cat_id=<?php echo $r['id']; ?>"><?php echo utf8_encode($r['descricao']); ?></a></li>
            <?php } ?>
            </ul>
        </li>
        <?php } ?>
        </ul>
    </nav>
</section>
*/ ?>


<div class="app__header__menu">
    <div class="app__menu app__container">
        <div class="app__menu__content">
            <div class="app__menu__level1">
                <?php $categorias = $db->executa("SELECT * FROM categorias"); ?>
                <?php while ($row = $categorias->fetch_array(MYSQLI_ASSOC)) { ?>
                    <a class="" aria-current="false" data-slug="roupas" data-tree="<?php echo utf8_encode($row['descricao']); ?>" href="#">
                        <span class="app__menu__title"><?php echo utf8_encode($row['descricao']); ?></span>
                    </a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
