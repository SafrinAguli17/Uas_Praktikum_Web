<?php
class Login_model extends CI_Model{
	//cek nip dan password dosen
	function auth_dosen($username,$password){
		$query=$this->db->query("SELECT * FROM admin WHERE nip='$username' AND pass=MD5('$password') LIMIT 1");
		return $query;
	}

	//cek nim dan password mahasiswa
	function auth_mahasiswa($username,$password){
		$query=$this->db->query("SELECT * FROM anggota WHERE nim='$username' AND pass=MD5('$password') LIMIT 1");
		return $query;
	}
	function auth_pegawai($username,$password){
		$query=$this->db->query("SELECT * FROM pegawai WHERE nip='$username' AND pass=MD5('$password') LIMIT 1");
		return $query;
	}

}
