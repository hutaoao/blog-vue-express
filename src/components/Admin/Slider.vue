<template>
    <div>
        <el-menu
                text-color="#fff"
                background-color="#545c64"
                active-text-color="#409eff"
                @select="selectMenu"
                :default-active="defaultActive"
        >
            <el-menu-item index="/admin/index">
                <i class="el-icon-video-camera-solid"></i>
                <span slot="title">介绍</span>
            </el-menu-item>
            <el-submenu index="2">
                <template slot="title">
                    <i class="el-icon-s-order"></i>
                    <span>文章</span>
                </template>
                <el-menu-item index="/admin/article">列表</el-menu-item>
                <el-menu-item index="/admin/publish">发布</el-menu-item>
            </el-submenu>
        </el-menu>
    </div>
</template>

<script>
    export default {
        name: "",
        data() {
            return {
                defaultActive: 'introduce'
            }
        },
        mounted() {
            let menu = sessionStorage.getItem('menu');
            if (menu) {
                this.defaultActive = menu;
            } else {
                this.defaultActive = 'introduce';
            }
        },
        methods: {
            selectMenu(menu) {
                this.defaultActive = menu;
                this.$router.push({path: menu}).catch(() => {
                    // console.log(err);
                });
                sessionStorage.setItem('menu', menu);
            }
        }
    }
</script>

<style scoped>

</style>
