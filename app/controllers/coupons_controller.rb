class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
        render 'index'
    end

    def show
        @coupon=Coupon.find(params[:id])
    end

    def new
        @coupon=Coupon.new
    end

    def create
        @coupon=Coupon.create(coupon_code:params[coupon_code],store:params[:store])
        redirect_to @coupon
    end
end