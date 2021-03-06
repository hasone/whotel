package com.whotel.company.dao;

import org.springframework.stereotype.Repository;

import com.whotel.common.dao.UnDeletedEntityMongoDao;
import com.whotel.company.entity.PublicNo;

@Repository
public class PublicNoDao extends UnDeletedEntityMongoDao<PublicNo, String> {

}
