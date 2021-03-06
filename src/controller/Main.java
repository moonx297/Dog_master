package controller;
	
import javafx.application.Application;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Modality;
import javafx.stage.Stage;
import model.Component;
import model.ComponentDAO;

//유기견
public class Main extends Application {
	
	@FXML private BorderPane rootLayout;
	@FXML private AnchorPane AnchorPane;
	
	
	private Stage primaryStage;
	
	private static final ObservableList<Component> componentList = FXCollections.observableArrayList();

	@Override
	public void start(Stage primaryStage) {
		try {
			this.primaryStage = primaryStage;
			ComMainController comMainController = new ComMainController();
			comMainController.setPrimaryStage(primaryStage);
			
			setRootLayout();
			setComMainView();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}

	public static void main(String[] args) {
		launch(args);
	}

	
	public Stage getPrimaryStage() {
		return primaryStage;
	}

	public void setRootLayout() {
		try {
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(Main.class.getResource("../view/RootLayout.fxml"));
			rootLayout = (BorderPane) loader.load();
			
			Scene scene = new Scene(rootLayout);
			primaryStage.setScene(scene);
//			primaryStage.setResizable(false);
			primaryStage.show();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	
	public void setComMainView() {
		
		try {
			
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(Main.class.getResource("../view/ComMainView.fxml"));
			AnchorPane comMainView = (AnchorPane) loader.load();
			rootLayout.setCenter(comMainView);
			

			
			ComMainController controller = loader.getController();
			controller.setMain(this);
			
			ComponentDAO componentDAO = new ComponentDAO();
			ObservableList<Component> tempList = componentDAO.getComponentList();
			for(int i = 0; i < tempList.size(); i++) {
				componentList.add(tempList.get(i));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public ObservableList<Component> getComponentList(){
		return componentList;
	}
	
	public int setComponentDataView(Component component) {
		try {
			FXMLLoader loader =  new FXMLLoader();
			loader.setLocation(Main.class.getResource("/view/ComDataView.fxml"));
			AnchorPane page =  (AnchorPane) loader.load();
			
			Stage dialogStage = new Stage();
			dialogStage.setTitle("수정 및 추가");
			dialogStage.initModality(Modality.WINDOW_MODAL);
			dialogStage.initOwner(primaryStage);
			Scene scene = new Scene(page);
			dialogStage.setScene(scene);
			
			ComDataController controller = (ComDataController) loader.getController();
			controller.setDialogStage(dialogStage);
			controller.setComponent(component);
			
			dialogStage.showAndWait();
			return controller.getReturnValue();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}
	
	@FXML
	public void saveAction() {
		ComponentDAO componentDAO = new ComponentDAO();
		System.out.println(componentList); //문제점 리스트에 값이 없음
		int result = componentDAO.saveComponentList(componentList);
		if( result == 1) {
			Alert alert = new Alert(AlertType.CONFIRMATION);
			alert.initOwner(primaryStage);
			alert.setTitle("성공 메시지");
			alert.setHeaderText("성공적으로 수행했습니다.");
			alert.setContentText("테이터베이스에 성공적으로 접근했습니다.");
			alert.showAndWait();
		} else {
			Alert alert = new Alert(AlertType.ERROR);
			alert.initOwner(primaryStage);
			alert.setTitle("오류 메시지");
			alert.setHeaderText("오류가 발생하였습니다.");
			alert.setContentText("테이터베이스에 오류가 발생하였습니다.");
			alert.showAndWait();
		}
	}
	
	@FXML
	public void locationChart() {
		
		try {
			
			FXMLLoader loader =  new FXMLLoader();
			loader.setLocation(Main.class.getResource("/view/BarChartView.fxml"));
			AnchorPane page =  (AnchorPane) loader.load();
			Stage dialogStage = new Stage();
			dialogStage.setTitle("위치별 부문 수량");
			dialogStage.initModality(Modality.WINDOW_MODAL);
			dialogStage.initOwner(primaryStage);
			Scene scene = new Scene(page);
			dialogStage.setScene(scene);
			
			BarChartController controller = loader.getController();
			controller.setComponentList(componentList);
			
			dialogStage.show();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	
	@FXML
	public void aboutAction() {
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setTitle("알아보기");
		alert.setHeaderText("<프로그램 정보>");
		alert.setContentText("프로그램 버전 : 1.0 Ver \n" +
		"프로그램 개발자 : ezen \n" +
		"프로그램 설명 : 자바FX DB프로그램 과제");
		alert.showAndWait();
	}
	
	@FXML
	public void endAction() {
		Platform.exit();
	}

}
