import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/main.dart';
import 'package:doctorapp/model/our_services_model.dart';
import 'package:doctorapp/provider/our_services_provider.dart';
import 'package:doctorapp/provider/schedule_appointment_provider.dart';
import 'package:doctorapp/widgets/custom_button.dart';
import 'package:doctorapp/widgets/custom_date_picker_field.dart';
import 'package:doctorapp/widgets/custom_gender_dropdown_field.dart';
import 'package:doctorapp/widgets/custom_phone_field.dart';
import 'package:doctorapp/widgets/custom_text_field.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScheduleAppointment extends StatelessWidget {
  const ScheduleAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduleAppointmentProvider =
        Provider.of<ScheduleAppointmentProvider>(context);
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        title: const Text('Schedule Appointment'),
        titleTextStyle: TextStyle(
          color: MyColors.textHeadingColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: MyColors.textHeadingColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 10),
                Consumer<OurServicesProvider>(
                  builder: (context, ourServicesProvider, child) {
                    OurServicesModel? defultServices =
                        ourServicesProvider.getOurServicesData.isNotEmpty
                        ? ourServicesProvider.getOurServicesData.first
                        : null;
                    return DropdownButtonFormField<OurServicesModel>(
                      initialValue: defultServices,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: MyColors.ourServicesBorderColor,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: MyColors.ourServicesBorderColor,
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: MyColors.ourServicesBorderColor,
                            width: 1,
                          ),
                        ),
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                        color: MyColors.basePrimaryColor,
                      ),
                      items: ourServicesProvider.getOurServicesData.map((
                        items,
                      ) {
                        return DropdownMenuItem(
                          value: items,
                          child: Row(
                            children: [
                              Image.asset(
                                items.imagUrlOurServices,
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                items.textServicesHeading,
                                style: TextStyle(
                                  color: MyColors.textHeadingColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (item) {},
                    );
                  },
                ),
                SizedBox(height: 10),
                Container(
                  height: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: MyColors.ourServicesBorderColor,
                      width: 1,
                    ),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: MyColors.ourServicesbackgroundColor,
                        ),
                        child: Image.asset(
                          'lib/assets/images/schedule_appointment.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Klinik Setia Alam'),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: MyColors.ratingColor,
                                      size: 12,
                                    ),
                                    Text(
                                      '4.2',
                                      style: TextStyle(
                                        color:
                                            MyColors.dashboardHeaderTextColor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '(210 Reviews)',
                                      style: TextStyle(
                                        color:
                                            MyColors.dashboardHeaderTextColor,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              '800m away',
                              style: TextStyle(
                                color: MyColors.basePrimaryColor,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 20,
                          color: MyColors.basePrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select Time",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                EasyDateTimeLine(
                  initialDate: scheduleAppointmentProvider.getSeclectedDate,
                  onDateChange: (newDate) {
                    scheduleAppointmentProvider.updateDate(newDate);
                  },
                  headerProps: EasyHeaderProps(
                    dateFormatter: DateFormatter.fullDateDMY(),
                    padding: EdgeInsets.zero,
                    monthPickerType: MonthPickerType.switcher,
                  ),
                  itemBuilder:
                      (
                        BuildContext context,
                        DateTime date,
                        bool isSelected,
                        VoidCallback onTap,
                      ) {
                        return InkWell(
                          onTap: onTap,
                          splashColor: MyColors.graylightColor,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 60,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? MyColors.basePrimaryColor
                                  : MyColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isSelected
                                    ? MyColors.basePrimaryColor
                                    : MyColors.graylightColor,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  scheduleAppointmentProvider.dayName(
                                    date.weekday,
                                  ),
                                  style: TextStyle(
                                    color: isSelected
                                        ? MyColors.whiteColor
                                        : MyColors.graylightColor,
                                    fontSize: 14,
                                  ),
                                ),
                                // Day number
                                Text(
                                  date.day.toString(),
                                  style: TextStyle(
                                    color: isSelected
                                        ? MyColors.whiteColor
                                        : MyColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select Time',
                    style: TextStyle(
                      color: MyColors.blackColor,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Consumer<ScheduleAppointmentProvider>(
                  builder: (context, provider, child) {
                    return Wrap(
                      spacing: 20,
                      runSpacing: 12,
                      children: List.generate(provider.getTime.length, (i) {
                        String time = provider.getTime[i];
                        bool isSelected = provider.getSelectedIndex == i;
                        return InkWell(
                          onTap: () {
                            provider.updateIndex(i);
                          },
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 22,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? MyColors.basePrimaryColor
                                  : MyColors.whiteColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: isSelected
                                    ? MyColors.basePrimaryColor
                                    : MyColors.graylightColor,
                              ),
                            ),
                            child: Text(
                              time,
                              style: TextStyle(
                                color: isSelected
                                    ? MyColors.whiteColor
                                    : MyColors.blackColor,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  },
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Contact Details",
                    style: TextStyle(
                      color: MyColors.textHeadingColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.blackColor.withValues(alpha: 0.15),
                        offset: Offset(0, 2),
                        blurRadius: 8,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      RadioGroup<String>(
                        onChanged: (value) {
                          scheduleAppointmentProvider.updateOption(
                            value.toString(),
                          );
                        },
                        groupValue:
                            scheduleAppointmentProvider.getSelectdOption,
                        child: Column(
                          children: [
                            RadioListTile<String>(
                              title: Text(
                                'I’m booking for my self',
                                style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              value: 'forMe',
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                              selected: true,
                            ),
                            RadioListTile<String>(
                              title: Text(
                                'Booking for Dependant/ Others',
                                style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              value: 'forOther',
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Theme(
                        data: Theme.of(
                          context,
                        ).copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(
                            'John Doe Santos',
                            style: TextStyle(
                              color: MyColors.blackColor,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            'Joedosanto68@gmail.com - +69 823217421',
                            style: TextStyle(
                              color: MyColors.textLightColor,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  CustomTextField(
                                    textEditingController:
                                        scheduleAppointmentProvider
                                            .nameController,
                                    keyboardType: TextInputType.name,
                                    hintText: 'Input Name',
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Gender',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: MyColors.blackColor,
                                                fontSize: 18,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            CustomGenderDropdownField(),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        width: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Age',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: MyColors.blackColor,
                                                fontSize: 18,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            CustomTextField(
                                              textEditingController:
                                                  scheduleAppointmentProvider
                                                      .ageController,
                                              keyboardType: TextInputType.text,
                                              hintText: 'Input Age',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10),
                                  Text(
                                    'Phone Number',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  CustomPhoneField(
                                    textEditingController:
                                        scheduleAppointmentProvider
                                            .nameController,
                                    keyboardType: TextInputType.phone,
                                  ),
                                  SizedBox(height: 10),
                                  if (scheduleAppointmentProvider
                                          .getSelectdOption ==
                                      'forOther') ...[
                                    Text(
                                      'Relationship',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: MyColors.blackColor,
                                        fontSize: 18,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    RadioGroup(
                                      onChanged: (newValue) {},
                                      groupValue: scheduleAppointmentProvider
                                          .getrelationShip,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Radio(value: 'Single'),
                                              Text("Single"),
                                            ],
                                          ),

                                          Row(
                                            children: [
                                              Radio(value: 'Married'),
                                              Text("Married"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Person',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: MyColors.blackColor,
                                        fontSize: 18,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    DropdownButtonFormField<String>(
                                      initialValue: scheduleAppointmentProvider
                                          .getPersonRelation,
                                      style: TextStyle(
                                        color: MyColors.blackColor.withAlpha(
                                          (0.6 * 255).toInt(),
                                        ),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.normal,
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          borderSide: BorderSide(
                                            color:
                                                MyColors.textFieldBorderColor,
                                            width: 1,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          borderSide: BorderSide(
                                            color:
                                                MyColors.textFieldBorderColor,
                                            width: 1,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color:
                                                MyColors.textFieldBorderColor,
                                          ),
                                        ),
                                      ),
                                      items: scheduleAppointmentProvider
                                          .getPersonRealtionList
                                          .map((value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                  color: MyColors.blackColor,
                                                  fontSize: 14,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            );
                                          })
                                          .toList(),
                                      onChanged: (newValue) {
                                        scheduleAppointmentProvider
                                            .updatePersonRelation(
                                              newValue.toString(),
                                            );
                                      },
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'Save for later',
                                        style: TextStyle(
                                          color: MyColors.basePrimaryColor,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  buttonText: 'Go to Payment',
                  backgroundColor: MyColors.basePrimaryColor,
                  buttonTextColor: MyColors.whiteColor,
                  onTap: (){},
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
