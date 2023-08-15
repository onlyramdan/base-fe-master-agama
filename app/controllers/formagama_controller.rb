class FormagamaController < ApplicationController
    def index
        url = "dataagama"
        @dataagama = ApplicationHelper.req_get(url)
        # render json: @dataagama["content"]
        # return
    end
    def create
        # render json: params
        # return
        data = {
            nama: params['nama'],
            agama: params['agama']
        }
        if !params['id'].present?
            url = "kirim/dataagama"
            @simpandataagama = ApplicationHelper.req_post(url,data)
            # render json: @simpandataagama
            # return
            # # rederect_to "/home"
        else
            dataupdate = {
                id: params['id'],
                nama: params['nama'],
                agama: params['agama']
            }
            # render json: dataupdate
            # return
            url = "updateagama"
            @simpandataagama = ApplicationHelper.req_post(url,dataupdate)
            # render json: @simpandataagama
            # return
        end 
        if @simpandataagama['status'] == true
            redirect_to '/home'
        else
            # render json: @simpandataagama nanti diisi notifikasi
        end
    end 
    def delete
        id = params['id']
        if params['id'].present?
            url = "deleteagama/"+id;
            @deldataagama = ApplicationHelper.req_post_del(url);
            render json: @deldataagama
        end
    end
end
