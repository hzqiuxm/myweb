/**
 * Created by hzqiuxm on 2014/12/5.
 */
var cartController = function ($scope) {

    $scope.cart = [
        {
            id: 1000,
            name: 'iphone6',
            quantity: 3,
            price: 5000
        },
        {
            id: 1001,
            name: 'iphone6-plus',
            quantity: 10,
            price: 65000
        },
        {
            id: 1002,
            name: 'ipad-air',
            quantity: 1,
            price: 8000
        },
        {
            id: 1003,
            name: 'mac-air',
            quantity: 2,
            price: 7500
        }
    ];

    $scope.totalprice = function () {

        var total = 0;
        angular.forEach($scope.cart, function (item) {
            total += item.quantity * item.price;
        });

        return total;
    }

    $scope.totalcount = function () {

        var count = 0;
        angular.forEach($scope.cart, function (item) {
            count += parseInt(item.quantity);
        });

        return count;

    }

    //移除事件
    $scope.remove = function (id) {

        var index = -1;
        angular.forEach($scope.cart, function (item, key) {
            if (id == item.id) {
                index = key;
            }

        });

        if (index != -1) {
            $scope.cart.splice(index, 1);
        }
    }

    $scope.removeall = function () {
        $scope.cart = {

        };
    }

    /**
     * 增加产品数量
     * @param id
     */
    $scope.add = function (id) {

        var index = findindex(id);
        if (index != -1) {
            ++$scope.cart[index].quantity;
        }

    }

    /**
     * 减少产品id
     * @param id
     */
    $scope.reduce = function (id) {

        var index = findindex(id);
        if (index != -1) {
            var item = $scope.cart[index];
            if (item.quantity > 1) {
                --$scope.cart[index].quantity;
            } else {
                var returnkey = confirm("确认从购物车删除该商品吗？");
                if (returnkey) {
                    $scope.remove(id);
                }
            }


        }

    }

    var findindex = function (id) {
        var index = -1;
        angular.forEach($scope.cart, function (item, key) {
            if (id == item.id) {
                index = key;
                return index;
            }

        });
        return index;

    }


    /**
     * 监视页面商品数量值变化
     */
    $scope.$watch('cart',function(newvalue,oldvalue){

        angular.forEach(newvalue,function(item,key){
            if(item.quantity<1){
                var retkey = confirm("是否在购物车中删除该商品？");
                if(retkey){
                    $scope.remove(item.id);
                }else {
                    item.quantity = oldvalue[key].quantity;
                }
                return;
            }

        });
    },true);

}
