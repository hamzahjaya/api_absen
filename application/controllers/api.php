<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class api extends REST_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model('M_pegawai');
    }

    public function index_get()
    {


        $id = antiinjection($this->get('id'));
        $handkey = antiinjection($this->get('handkey'));


        if (!empty($id) && !empty($handkey)) {


            $pegawai = array(
                'id' => $id,
                'handkey' => $handkey

            );

            $pegawai = $this->M_pegawai->data_pegawai($id, $handkey);

            if (count($pegawai) > 0) {
                $this->response(
                    [
                        'status' => TRUE,
                        'message' => 'Pegawai benar.',
                        'data' => $pegawai
                    ],

                    REST_Controller::HTTP_OK
                );
            } else {
                $this->response(
                    [
                        'status' => false,
                        'message' => 'Data tidak ditemukan',
                        'data' => array()
                    ],

                    REST_Controller::HTTP_OK
                );
            }
        } else {

            $this->response([
                'status' => FALSE,
                'message' => 'parameter tidak valid',
                'data' => array()
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
