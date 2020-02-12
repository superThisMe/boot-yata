package com.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yata.mapper.CarMapper;
import com.yata.vo.CarPhotoVO;
import com.yata.vo.CarTypeVO;
import com.yata.vo.CarVO;

@Service("carService")
public class CarServiceImpl implements CarService {

	@Autowired
	private CarMapper carMapper;

	@Override
	public void registerCar(CarVO car, List<CarPhotoVO> carPhotos, CarTypeVO carType) {

		carMapper.insertCar(car);
		int newNum = car.getCarNum();

		for (CarPhotoVO carPhoto : carPhotos) {
			carPhoto.setCarNum(newNum);
			carMapper.insertCarPhoto(carPhoto);
		}

		carType.setCarNum(newNum);
		carMapper.insertCarType(carType);

	}

	@Override
	public List<CarVO> findCar() {

		return carMapper.findCar();
	}

	@Override
	public void deleteCar(int carNum) {

		carMapper.deleteCar(carNum);

	}

	@Override
	public CarVO findCarNum(int carNum) {

		return carMapper.findCarNum(carNum);
	}

	@Override
	public CarVO showModifyCar(int carNum) {

		return carMapper.showModifyCar(carNum);
	}

	@Override
	public void modifyCar(CarVO car, List<CarPhotoVO> carPhotos, CarTypeVO carType, int carNum) {

		carMapper.updateCar(car);

		System.out.println(carPhotos);

		carMapper.deletePhoto(carNum);

		int newNum = car.getCarNum();

		for (CarPhotoVO carPhoto : carPhotos) {
			carPhoto.setCarNum(newNum);
			carMapper.updateCarPhoto(carPhoto);
		}

		carMapper.updateCarType(carType);

	}

	@Override
	public int countAllCars() {
		return carMapper.selectAllCars();
	}

	@Override
	public int countAllPhotos() {
		return carMapper.selectAllPhotos();
	}

}
