package com.walk.mall.tiny.modules.ums.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.walk.mall.tiny.modules.ums.model.UmsDictionary;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yizhi
 */
@Mapper
public interface UmsDictionaryMapper extends BaseMapper<UmsDictionary> {
    UmsDictionary findUmsDictionaryByDicKeyAndDicNameAndState(@Param("id")String id, @Param("name")String name, @Param("state")String state);
    List<UmsDictionary> findUmsDictionaryByDicNameAndState(@Param("name")String name, @Param("state")String state);
    List<UmsDictionary> findUmsDictionaryByDicNameAndParentId(@Param("name")String name,@Param("parentId")Integer parentId, @Param("state")String state);
    List<String> findName();
    List<UmsDictionary> findByDicParentIdAndState(@Param("parentId")Integer parentId, @Param("state")String state);
    List<UmsDictionary> findByState(String state);

    String getValueByNameAndKey(@Param("dicName") String dicName, @Param("dicKey") String dicKey);

    List<UmsDictionary> getByName(@Param("dicName") String dicName);
}
